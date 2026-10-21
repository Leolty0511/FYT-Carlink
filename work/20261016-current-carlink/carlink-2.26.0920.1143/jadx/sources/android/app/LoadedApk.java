package android.app;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.split.SplitDependencyLoader;
import android.content.res.AssetManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Resources;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.service.notification.ZenModeConfig;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.CheckTime;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.view.DisplayAdjustments;
import com.android.internal.app.BroadcastTimeoutListener;
import com.android.internal.util.ArrayUtils;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class LoadedApk {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final boolean DEBUG = false;
    static final String TAG = "LoadedApk";
    private final ActivityThread mActivityThread;
    private String mAppDir;
    private Application mApplication;
    private ApplicationInfo mApplicationInfo;
    private final ClassLoader mBaseClassLoader;
    private ClassLoader mClassLoader;
    private File mCredentialProtectedDataDirFile;
    private String mDataDir;
    private File mDataDirFile;
    private File mDeviceProtectedDataDirFile;
    private final DisplayAdjustments mDisplayAdjustments;
    private final boolean mIncludeCode;
    private String mLibDir;
    private String[] mOverlayDirs;
    final String mPackageName;
    private final ArrayMap<Context, ArrayMap<BroadcastReceiver, ReceiverDispatcher>> mReceivers;
    private final boolean mRegisterPackage;
    private String mResDir;
    Resources mResources;
    private final boolean mSecurityViolation;
    private final ArrayMap<Context, ArrayMap<ServiceConnection, ServiceDispatcher>> mServices;
    private String[] mSplitAppDirs;
    private String[] mSplitClassLoaderNames;
    private SplitDependencyLoaderImpl mSplitLoader;
    private String[] mSplitNames;
    private String[] mSplitResDirs;
    private final ArrayMap<Context, ArrayMap<ServiceConnection, ServiceDispatcher>> mUnboundServices;
    private final ArrayMap<Context, ArrayMap<BroadcastReceiver, ReceiverDispatcher>> mUnregisteredReceivers;

    public static final class ReceiverDispatcher {
        final Handler mActivityThread;
        final Context mContext;
        boolean mForgotten;
        final IIntentReceiver.Stub mIIntentReceiver;
        final Instrumentation mInstrumentation;
        final IntentReceiverLeaked mLocation;
        final BroadcastReceiver mReceiver;
        final boolean mRegistered;
        RuntimeException mUnregisterLocation;

        public final class Args extends BroadcastReceiver.PendingResult {
            private Intent mCurIntent;
            private boolean mDispatched;
            private final boolean mOrdered;
            private Throwable mPreviousRunStacktrace;

            public Args(Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3) {
                super(i2, str, bundle, ReceiverDispatcher.this.mRegistered ? 1 : 2, z2, z3, ReceiverDispatcher.this.mIIntentReceiver.asBinder(), i3, intent.getFlags());
                this.mCurIntent = intent;
                this.mOrdered = z2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$getRunnable$0() {
                BroadcastReceiver broadcastReceiver = ReceiverDispatcher.this.mReceiver;
                boolean z2 = this.mOrdered;
                IActivityManager service = ActivityManager.getService();
                Intent intent = this.mCurIntent;
                if (intent == null) {
                    Log.wtf(LoadedApk.TAG, "Null intent being dispatched, mDispatched=" + this.mDispatched + ": run() previously called at " + Log.getStackTraceString(this.mPreviousRunStacktrace));
                }
                this.mCurIntent = null;
                this.mDispatched = true;
                this.mPreviousRunStacktrace = new Throwable("Previous stacktrace");
                if (broadcastReceiver == null || intent == null || ReceiverDispatcher.this.mForgotten) {
                    if (ReceiverDispatcher.this.mRegistered && z2) {
                        sendFinished(service);
                        return;
                    }
                    return;
                }
                Trace.traceBegin(64L, "broadcastReceiveReg");
                try {
                    ClassLoader classLoader = ReceiverDispatcher.this.mReceiver.getClass().getClassLoader();
                    intent.setExtrasClassLoader(classLoader);
                    intent.prepareToEnterProcess();
                    setExtrasClassLoader(classLoader);
                    broadcastReceiver.setPendingResult(this);
                    broadcastReceiver.onReceive(ReceiverDispatcher.this.mContext, intent);
                } catch (Exception e2) {
                    if (ReceiverDispatcher.this.mRegistered && z2) {
                        sendFinished(service);
                    }
                    ReceiverDispatcher receiverDispatcher = ReceiverDispatcher.this;
                    Instrumentation instrumentation = receiverDispatcher.mInstrumentation;
                    if (instrumentation == null || !instrumentation.onException(receiverDispatcher.mReceiver, e2)) {
                        Trace.traceEnd(64L);
                        throw new RuntimeException("Error receiving broadcast " + intent + " in " + ReceiverDispatcher.this.mReceiver, e2);
                    }
                }
                if (broadcastReceiver.getPendingResult() != null) {
                    finish();
                }
                Trace.traceEnd(64L);
            }

            public final Runnable getRunnable() {
                return new f(this, 2);
            }
        }

        public static final class InnerReceiver extends IIntentReceiver.Stub implements BroadcastTimeoutListener {
            final WeakReference<ReceiverDispatcher> mDispatcher;
            final ReceiverDispatcher mStrongRef;

            public InnerReceiver(ReceiverDispatcher receiverDispatcher, boolean z2) {
                this.mDispatcher = new WeakReference<>(receiverDispatcher);
                this.mStrongRef = z2 ? receiverDispatcher : null;
            }

            @Override // com.android.internal.app.BroadcastTimeoutListener
            public void onBroadcastTimeout(Intent intent) {
                ReceiverDispatcher receiverDispatcher = this.mDispatcher.get();
                if (receiverDispatcher == null || receiverDispatcher.mLocation == null) {
                    Slog.v("ActivityThread", "Receiver dispathing timeout for intent " + intent);
                } else {
                    Slog.w("ActivityThread", "Receiver dispatching timeout " + this + "for intent " + intent + ", registered at", receiverDispatcher.mLocation);
                }
            }

            @Override // android.content.IIntentReceiver
            public void performReceive(Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3) {
                ReceiverDispatcher receiverDispatcher;
                ReceiverDispatcher receiverDispatcher2;
                if (intent == null) {
                    Log.wtf(LoadedApk.TAG, "Null intent received");
                    receiverDispatcher = null;
                } else {
                    receiverDispatcher = this.mDispatcher.get();
                }
                ReceiverDispatcher receiverDispatcher3 = receiverDispatcher;
                long time = CheckTime.getTime();
                if (receiverDispatcher3 != null) {
                    receiverDispatcher3.performReceive(intent, i2, str, bundle, z2, z3, i3);
                } else {
                    IActivityManager service = ActivityManager.getService();
                    if (bundle != null) {
                        try {
                            bundle.setAllowFds(false);
                        } catch (RemoteException e2) {
                            throw e2.rethrowFromSystemServer();
                        }
                    }
                    service.finishReceiver(this, i2, str, bundle, false, intent.getFlags());
                }
                if (!CheckTime.checkTime(time, "performReceive intent = " + intent) || (receiverDispatcher2 = this.mDispatcher.get()) == null || receiverDispatcher2.mLocation == null) {
                    return;
                }
                Slog.i("CheckTime", "Receiver " + this + " registered at", receiverDispatcher2.mLocation);
            }
        }

        public ReceiverDispatcher(BroadcastReceiver broadcastReceiver, Context context, Handler handler, Instrumentation instrumentation, boolean z2) {
            if (handler == null) {
                throw new NullPointerException("Handler must not be null");
            }
            this.mIIntentReceiver = new InnerReceiver(this, !z2);
            this.mReceiver = broadcastReceiver;
            this.mContext = context;
            this.mActivityThread = handler;
            this.mInstrumentation = instrumentation;
            this.mRegistered = z2;
            IntentReceiverLeaked intentReceiverLeaked = new IntentReceiverLeaked(null);
            this.mLocation = intentReceiverLeaked;
            intentReceiverLeaked.fillInStackTrace();
        }

        public IIntentReceiver getIIntentReceiver() {
            return this.mIIntentReceiver;
        }

        public BroadcastReceiver getIntentReceiver() {
            return this.mReceiver;
        }

        public IntentReceiverLeaked getLocation() {
            return this.mLocation;
        }

        public RuntimeException getUnregisterLocation() {
            return this.mUnregisterLocation;
        }

        public void performReceive(Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3) {
            Args args = new Args(intent, i2, str, bundle, z2, z3, i3);
            if (intent == null) {
                Log.wtf(LoadedApk.TAG, "Null intent received");
            }
            if ((intent == null || !this.mActivityThread.post(args.getRunnable())) && this.mRegistered && z2) {
                args.sendFinished(ActivityManager.getService());
            }
        }

        public void setUnregisterLocation(RuntimeException runtimeException) {
            this.mUnregisterLocation = runtimeException;
        }

        public void validate(Context context, Handler handler) {
            if (this.mContext != context) {
                throw new IllegalStateException("Receiver " + this.mReceiver + " registered with differing Context (was " + this.mContext + " now " + context + ")");
            }
            if (this.mActivityThread == handler) {
                return;
            }
            throw new IllegalStateException("Receiver " + this.mReceiver + " registered with differing handler (was " + this.mActivityThread + " now " + handler + ")");
        }
    }

    public static final class ServiceDispatcher {
        private final Handler mActivityThread;
        private final ServiceConnection mConnection;
        private final Context mContext;
        private final int mFlags;
        private boolean mForgotten;
        private final ServiceConnectionLeaked mLocation;
        private RuntimeException mUnbindLocation;
        private final ArrayMap<ComponentName, ConnectionInfo> mActiveConnections = new ArrayMap<>();
        private final InnerConnection mIServiceConnection = new InnerConnection(this);

        public static class ConnectionInfo {
            IBinder binder;
            IBinder.DeathRecipient deathMonitor;

            private ConnectionInfo() {
            }
        }

        public final class DeathMonitor implements IBinder.DeathRecipient {
            final ComponentName mName;
            final IBinder mService;

            public DeathMonitor(ComponentName componentName, IBinder iBinder) {
                this.mName = componentName;
                this.mService = iBinder;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                ServiceDispatcher.this.death(this.mName, this.mService);
            }
        }

        public static class InnerConnection extends IServiceConnection.Stub {
            final WeakReference<ServiceDispatcher> mDispatcher;

            public InnerConnection(ServiceDispatcher serviceDispatcher) {
                this.mDispatcher = new WeakReference<>(serviceDispatcher);
            }

            @Override // android.app.IServiceConnection
            public void connected(ComponentName componentName, IBinder iBinder, boolean z2) {
                ServiceDispatcher serviceDispatcher = this.mDispatcher.get();
                if (serviceDispatcher != null) {
                    serviceDispatcher.connected(componentName, iBinder, z2);
                }
            }
        }

        public final class RunConnection implements Runnable {
            final int mCommand;
            final boolean mDead;
            final ComponentName mName;
            final IBinder mService;

            public RunConnection(ComponentName componentName, IBinder iBinder, int i2, boolean z2) {
                this.mName = componentName;
                this.mService = iBinder;
                this.mCommand = i2;
                this.mDead = z2;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i2 = this.mCommand;
                if (i2 == 0) {
                    ServiceDispatcher.this.doConnected(this.mName, this.mService, this.mDead);
                } else if (i2 == 1) {
                    ServiceDispatcher.this.doDeath(this.mName, this.mService);
                }
            }
        }

        public ServiceDispatcher(ServiceConnection serviceConnection, Context context, Handler handler, int i2) {
            this.mConnection = serviceConnection;
            this.mContext = context;
            this.mActivityThread = handler;
            ServiceConnectionLeaked serviceConnectionLeaked = new ServiceConnectionLeaked(null);
            this.mLocation = serviceConnectionLeaked;
            serviceConnectionLeaked.fillInStackTrace();
            this.mFlags = i2;
        }

        public void connected(ComponentName componentName, IBinder iBinder, boolean z2) {
            Handler handler = this.mActivityThread;
            if (handler != null) {
                handler.post(new RunConnection(componentName, iBinder, 0, z2));
            } else {
                doConnected(componentName, iBinder, z2);
            }
        }

        public void death(ComponentName componentName, IBinder iBinder) {
            Handler handler = this.mActivityThread;
            if (handler != null) {
                handler.post(new RunConnection(componentName, iBinder, 1, false));
            } else {
                doDeath(componentName, iBinder);
            }
        }

        public void doConnected(ComponentName componentName, IBinder iBinder, boolean z2) {
            synchronized (this) {
                if (this.mForgotten) {
                    return;
                }
                ConnectionInfo connectionInfo = this.mActiveConnections.get(componentName);
                if (connectionInfo == null || connectionInfo.binder != iBinder) {
                    if (iBinder != null) {
                        ConnectionInfo connectionInfo2 = new ConnectionInfo();
                        connectionInfo2.binder = iBinder;
                        DeathMonitor deathMonitor = new DeathMonitor(componentName, iBinder);
                        connectionInfo2.deathMonitor = deathMonitor;
                        try {
                            iBinder.linkToDeath(deathMonitor, 0);
                            this.mActiveConnections.put(componentName, connectionInfo2);
                        } catch (RemoteException unused) {
                            this.mActiveConnections.remove(componentName);
                            return;
                        }
                    } else {
                        this.mActiveConnections.remove(componentName);
                    }
                    if (connectionInfo != null) {
                        connectionInfo.binder.unlinkToDeath(connectionInfo.deathMonitor, 0);
                    }
                    if (connectionInfo != null) {
                        this.mConnection.onServiceDisconnected(componentName);
                    }
                    if (z2) {
                        this.mConnection.onBindingDied(componentName);
                    }
                    if (iBinder != null) {
                        this.mConnection.onServiceConnected(componentName, iBinder);
                    }
                }
            }
        }

        public void doDeath(ComponentName componentName, IBinder iBinder) {
            synchronized (this) {
                ConnectionInfo connectionInfo = this.mActiveConnections.get(componentName);
                if (connectionInfo != null && connectionInfo.binder == iBinder) {
                    this.mActiveConnections.remove(componentName);
                    connectionInfo.binder.unlinkToDeath(connectionInfo.deathMonitor, 0);
                    this.mConnection.onServiceDisconnected(componentName);
                }
            }
        }

        public void doForget() {
            synchronized (this) {
                for (int i2 = 0; i2 < this.mActiveConnections.size(); i2++) {
                    ConnectionInfo connectionInfoValueAt = this.mActiveConnections.valueAt(i2);
                    connectionInfoValueAt.binder.unlinkToDeath(connectionInfoValueAt.deathMonitor, 0);
                }
                this.mActiveConnections.clear();
                this.mForgotten = true;
            }
        }

        public int getFlags() {
            return this.mFlags;
        }

        public IServiceConnection getIServiceConnection() {
            return this.mIServiceConnection;
        }

        public ServiceConnectionLeaked getLocation() {
            return this.mLocation;
        }

        public ServiceConnection getServiceConnection() {
            return this.mConnection;
        }

        public RuntimeException getUnbindLocation() {
            return this.mUnbindLocation;
        }

        public void setUnbindLocation(RuntimeException runtimeException) {
            this.mUnbindLocation = runtimeException;
        }

        public void validate(Context context, Handler handler) {
            if (this.mContext != context) {
                throw new RuntimeException("ServiceConnection " + this.mConnection + " registered with differing Context (was " + this.mContext + " now " + context + ")");
            }
            if (this.mActivityThread == handler) {
                return;
            }
            throw new RuntimeException("ServiceConnection " + this.mConnection + " registered with differing handler (was " + this.mActivityThread + " now " + handler + ")");
        }
    }

    public class SplitDependencyLoaderImpl extends SplitDependencyLoader<PackageManager.NameNotFoundException> {
        private final ClassLoader[] mCachedClassLoaders;
        private final String[][] mCachedResourcePaths;

        public SplitDependencyLoaderImpl(SparseArray<int[]> sparseArray) {
            super(sparseArray);
            this.mCachedResourcePaths = new String[LoadedApk.this.mSplitNames.length + 1][];
            this.mCachedClassLoaders = new ClassLoader[LoadedApk.this.mSplitNames.length + 1];
        }

        private int ensureSplitLoaded(String str) throws PackageManager.NameNotFoundException {
            int i2;
            if (str != null) {
                int iBinarySearch = Arrays.binarySearch(LoadedApk.this.mSplitNames, str);
                if (iBinarySearch < 0) {
                    throw new PackageManager.NameNotFoundException(android.accessibilityservice.c.k("Split name '", str, "' is not installed"));
                }
                i2 = iBinarySearch + 1;
            } else {
                i2 = 0;
            }
            loadDependenciesForSplit(i2);
            return i2;
        }

        @Override // android.content.pm.split.SplitDependencyLoader
        public void constructSplit(int i2, int[] iArr, int i3) {
            ArrayList arrayList = new ArrayList();
            if (i2 == 0) {
                LoadedApk.this.createOrUpdateClassLoaderLocked(null);
                this.mCachedClassLoaders[0] = LoadedApk.this.mClassLoader;
                for (int i4 : iArr) {
                    arrayList.add(LoadedApk.this.mSplitResDirs[i4 - 1]);
                }
                this.mCachedResourcePaths[0] = (String[]) arrayList.toArray(new String[arrayList.size()]);
                return;
            }
            ClassLoader[] classLoaderArr = this.mCachedClassLoaders;
            int i5 = i2 - 1;
            classLoaderArr[i2] = ApplicationLoaders.getDefault().getClassLoader(LoadedApk.this.mSplitAppDirs[i5], LoadedApk.this.getTargetSdkVersion(), false, null, null, classLoaderArr[i3], LoadedApk.this.mSplitClassLoaderNames[i5]);
            Collections.addAll(arrayList, this.mCachedResourcePaths[i3]);
            arrayList.add(LoadedApk.this.mSplitResDirs[i5]);
            for (int i6 : iArr) {
                arrayList.add(LoadedApk.this.mSplitResDirs[i6 - 1]);
            }
            this.mCachedResourcePaths[i2] = (String[]) arrayList.toArray(new String[arrayList.size()]);
        }

        public ClassLoader getClassLoaderForSplit(String str) {
            return this.mCachedClassLoaders[ensureSplitLoaded(str)];
        }

        public String[] getSplitPathsForSplit(String str) {
            return this.mCachedResourcePaths[ensureSplitLoaded(str)];
        }

        @Override // android.content.pm.split.SplitDependencyLoader
        public boolean isSplitCached(int i2) {
            return this.mCachedClassLoaders[i2] != null;
        }
    }

    public static class WarningContextClassLoader extends ClassLoader {
        private static boolean warned = false;

        private WarningContextClassLoader() {
        }

        private void warn(String str) {
            if (warned) {
                return;
            }
            warned = true;
            Thread.currentThread().setContextClassLoader(getParent());
            Slog.w("ActivityThread", "ClassLoader." + str + ": The class loader returned by Thread.getContextClassLoader() may fail for processes that host multiple applications. You should explicitly specify a context class loader. For example: Thread.setContextClassLoader(getClass().getClassLoader());");
        }

        @Override // java.lang.ClassLoader
        public void clearAssertionStatus() {
            warn("clearAssertionStatus");
            getParent().clearAssertionStatus();
        }

        @Override // java.lang.ClassLoader
        public URL getResource(String str) {
            warn("getResource");
            return getParent().getResource(str);
        }

        @Override // java.lang.ClassLoader
        public InputStream getResourceAsStream(String str) {
            warn("getResourceAsStream");
            return getParent().getResourceAsStream(str);
        }

        @Override // java.lang.ClassLoader
        public Enumeration<URL> getResources(String str) {
            warn("getResources");
            return getParent().getResources(str);
        }

        @Override // java.lang.ClassLoader
        public Class<?> loadClass(String str) {
            warn("loadClass");
            return getParent().loadClass(str);
        }

        @Override // java.lang.ClassLoader
        public void setClassAssertionStatus(String str, boolean z2) {
            warn("setClassAssertionStatus");
            getParent().setClassAssertionStatus(str, z2);
        }

        @Override // java.lang.ClassLoader
        public void setDefaultAssertionStatus(boolean z2) {
            warn("setDefaultAssertionStatus");
            getParent().setDefaultAssertionStatus(z2);
        }

        @Override // java.lang.ClassLoader
        public void setPackageAssertionStatus(String str, boolean z2) {
            warn("setPackageAssertionStatus");
            getParent().setPackageAssertionStatus(str, z2);
        }
    }

    public LoadedApk(ActivityThread activityThread, ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, ClassLoader classLoader, boolean z2, boolean z3, boolean z4) {
        DisplayAdjustments displayAdjustments = new DisplayAdjustments();
        this.mDisplayAdjustments = displayAdjustments;
        this.mReceivers = new ArrayMap<>();
        this.mUnregisteredReceivers = new ArrayMap<>();
        this.mServices = new ArrayMap<>();
        this.mUnboundServices = new ArrayMap<>();
        this.mActivityThread = activityThread;
        setApplicationInfo(applicationInfo);
        this.mPackageName = applicationInfo.packageName;
        this.mBaseClassLoader = classLoader;
        this.mSecurityViolation = z2;
        this.mIncludeCode = z3;
        this.mRegisterPackage = z4;
        displayAdjustments.setCompatibilityInfo(compatibilityInfo);
    }

    private static ApplicationInfo adjustNativeLibraryPaths(ApplicationInfo applicationInfo) {
        if (applicationInfo.primaryCpuAbi != null && applicationInfo.secondaryCpuAbi != null) {
            String strVmInstructionSet = VMRuntime.getRuntime().vmInstructionSet();
            String instructionSet = VMRuntime.getInstructionSet(applicationInfo.secondaryCpuAbi);
            String str = SystemProperties.get("ro.dalvik.vm.isa." + instructionSet);
            if (!str.isEmpty()) {
                instructionSet = str;
            }
            if (strVmInstructionSet.equals(instructionSet)) {
                ApplicationInfo applicationInfo2 = new ApplicationInfo(applicationInfo);
                applicationInfo2.nativeLibraryDir = applicationInfo2.secondaryNativeLibraryDir;
                applicationInfo2.primaryCpuAbi = applicationInfo2.secondaryCpuAbi;
                return applicationInfo2;
            }
        }
        return applicationInfo;
    }

    private static void appendApkLibPathIfNeeded(String str, ApplicationInfo applicationInfo, List<String> list) {
        if (list == null || applicationInfo.primaryCpuAbi == null || !str.endsWith(".apk") || applicationInfo.targetSdkVersion < 26) {
            return;
        }
        StringBuilder sbU = android.accessibilityservice.c.u(str, "!/lib/");
        sbU.append(applicationInfo.primaryCpuAbi);
        list.add(sbU.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createOrUpdateClassLoaderLocked(List<String> list) {
        if (this.mPackageName.equals(ZenModeConfig.SYSTEM_AUTHORITY)) {
            if (this.mClassLoader != null) {
                return;
            }
            ClassLoader classLoader = this.mBaseClassLoader;
            if (classLoader != null) {
                this.mClassLoader = classLoader;
                return;
            } else {
                this.mClassLoader = ClassLoader.getSystemClassLoader();
                return;
            }
        }
        if (!Objects.equals(this.mPackageName, ActivityThread.currentPackageName()) && this.mIncludeCode) {
            try {
                ActivityThread.getPackageManager().notifyPackageUse(this.mPackageName, 6);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        if (this.mRegisterPackage) {
            try {
                ActivityManager.getService().addPackageDependency(this.mPackageName);
            } catch (RemoteException e3) {
                throw e3.rethrowFromSystemServer();
            }
        }
        ArrayList arrayList = new ArrayList(10);
        ArrayList arrayList2 = new ArrayList(10);
        boolean z2 = false;
        boolean z3 = true;
        boolean z4 = this.mApplicationInfo.isSystemApp() && !this.mApplicationInfo.isUpdatedSystemApp();
        String property = System.getProperty("java.library.path");
        boolean z5 = (this.mApplicationInfo.getCodePath() != null && this.mApplicationInfo.getCodePath().startsWith("/vendor/") && (property.contains("/vendor/lib") ^ true)) ? false : z4;
        makePaths(this.mActivityThread, z5, this.mApplicationInfo, arrayList, arrayList2);
        String strN = this.mDataDir;
        if (z5) {
            strN = android.accessibilityservice.c.n(android.accessibilityservice.c.r(strN), File.pathSeparator, property);
        }
        String str = strN;
        String str2 = File.pathSeparator;
        String strJoin = TextUtils.join(str2, arrayList2);
        if (!this.mIncludeCode) {
            if (this.mClassLoader == null) {
                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                this.mClassLoader = ApplicationLoaders.getDefault().getClassLoader("", this.mApplicationInfo.targetSdkVersion, z5, strJoin, str, this.mBaseClassLoader, null);
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                return;
            }
            return;
        }
        String strJoin2 = arrayList.size() == 1 ? (String) arrayList.get(0) : TextUtils.join(str2, arrayList);
        if (this.mClassLoader == null) {
            StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads2 = StrictMode.allowThreadDiskReads();
            ApplicationLoaders applicationLoaders = ApplicationLoaders.getDefault();
            ApplicationInfo applicationInfo = this.mApplicationInfo;
            this.mClassLoader = applicationLoaders.getClassLoader(strJoin2, applicationInfo.targetSdkVersion, z5, strJoin, str, this.mBaseClassLoader, applicationInfo.classLoaderName);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads2);
            z2 = true;
        }
        if (list == null || list.size() <= 0) {
            z3 = z2;
        } else {
            ApplicationLoaders.getDefault().addPath(this.mClassLoader, TextUtils.join(str2, list));
        }
        if (!z3 || ActivityThread.isSystem()) {
            return;
        }
        setupJitProfileSupport();
    }

    private static String[] getLibrariesFor(String str) {
        try {
            ApplicationInfo applicationInfo = ActivityThread.getPackageManager().getApplicationInfo(str, 1024, UserHandle.myUserId());
            if (applicationInfo == null) {
                return null;
            }
            return applicationInfo.sharedLibraryFiles;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private static File getPrimaryProfileFile(String str) {
        return new File(Environment.getDataProfilesDePackageDirectory(UserHandle.myUserId(), str), "primary.prof");
    }

    private void initializeJavaContextClassLoader() {
        try {
            PackageInfo packageInfo = ActivityThread.getPackageManager().getPackageInfo(this.mPackageName, 268435456, UserHandle.myUserId());
            if (packageInfo == null) {
                throw new IllegalStateException(android.accessibilityservice.c.n(new StringBuilder("Unable to get package info for "), this.mPackageName, "; is package not installed?"));
            }
            boolean z2 = true;
            boolean z3 = packageInfo.sharedUserId != null;
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            boolean z4 = (applicationInfo == null || this.mPackageName.equals(applicationInfo.processName)) ? false : true;
            if (!z3 && !z4) {
                z2 = false;
            }
            Thread.currentThread().setContextClassLoader(z2 ? new WarningContextClassLoader() : this.mClassLoader);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static void makePaths(ActivityThread activityThread, ApplicationInfo applicationInfo, List<String> list) {
        makePaths(activityThread, false, applicationInfo, list, null);
    }

    private void rewriteRValues(ClassLoader classLoader, String str, int i2) {
        Throwable e2;
        try {
            try {
                try {
                    classLoader.loadClass(str + ".R").getMethod("onResourcesLoaded", Integer.TYPE).invoke(null, Integer.valueOf(i2));
                } catch (IllegalAccessException e3) {
                    e2 = e3;
                    throw new RuntimeException(android.accessibilityservice.c.j("Failed to rewrite resource references for ", str), e2);
                } catch (InvocationTargetException e4) {
                    e2 = e4.getCause();
                    throw new RuntimeException(android.accessibilityservice.c.j("Failed to rewrite resource references for ", str), e2);
                }
            } catch (NoSuchMethodException unused) {
            }
        } catch (ClassNotFoundException unused2) {
            Log.i(TAG, "No resource references to update in package " + str);
        }
    }

    private void setApplicationInfo(ApplicationInfo applicationInfo) {
        int iMyUid = Process.myUid();
        ApplicationInfo applicationInfoAdjustNativeLibraryPaths = adjustNativeLibraryPaths(applicationInfo);
        this.mApplicationInfo = applicationInfoAdjustNativeLibraryPaths;
        String str = applicationInfoAdjustNativeLibraryPaths.sourceDir;
        this.mAppDir = str;
        if (applicationInfoAdjustNativeLibraryPaths.uid != iMyUid) {
            str = applicationInfoAdjustNativeLibraryPaths.publicSourceDir;
        }
        this.mResDir = str;
        this.mOverlayDirs = applicationInfoAdjustNativeLibraryPaths.resourceDirs;
        String str2 = applicationInfoAdjustNativeLibraryPaths.dataDir;
        this.mDataDir = str2;
        this.mLibDir = applicationInfoAdjustNativeLibraryPaths.nativeLibraryDir;
        this.mDataDirFile = FileUtils.newFileOrNull(str2);
        this.mDeviceProtectedDataDirFile = FileUtils.newFileOrNull(applicationInfoAdjustNativeLibraryPaths.deviceProtectedDataDir);
        this.mCredentialProtectedDataDirFile = FileUtils.newFileOrNull(applicationInfoAdjustNativeLibraryPaths.credentialProtectedDataDir);
        this.mSplitNames = applicationInfoAdjustNativeLibraryPaths.splitNames;
        String[] strArr = applicationInfoAdjustNativeLibraryPaths.splitSourceDirs;
        this.mSplitAppDirs = strArr;
        if (applicationInfoAdjustNativeLibraryPaths.uid != iMyUid) {
            strArr = applicationInfoAdjustNativeLibraryPaths.splitPublicSourceDirs;
        }
        this.mSplitResDirs = strArr;
        this.mSplitClassLoaderNames = applicationInfoAdjustNativeLibraryPaths.splitClassLoaderNames;
        if (!applicationInfoAdjustNativeLibraryPaths.requestsIsolatedSplitLoading() || ArrayUtils.isEmpty(this.mSplitNames)) {
            return;
        }
        this.mSplitLoader = new SplitDependencyLoaderImpl(applicationInfoAdjustNativeLibraryPaths.splitDependencies);
    }

    private void setupJitProfileSupport() {
        if (SystemProperties.getBoolean("dalvik.vm.usejitprofiles", false) && this.mApplicationInfo.uid == Process.myUid()) {
            ArrayList arrayList = new ArrayList();
            ApplicationInfo applicationInfo = this.mApplicationInfo;
            if ((applicationInfo.flags & 4) != 0) {
                arrayList.add(applicationInfo.sourceDir);
            }
            String[] strArr = this.mApplicationInfo.splitSourceDirs;
            if (strArr != null) {
                Collections.addAll(arrayList, strArr);
            }
            if (arrayList.isEmpty()) {
                return;
            }
            VMRuntime.registerAppInfo(getPrimaryProfileFile(this.mPackageName).getPath(), (String[]) arrayList.toArray(new String[arrayList.size()]));
            DexLoadReporter.getInstance().registerAppDataDir(this.mPackageName, this.mDataDir);
        }
    }

    public IIntentReceiver forgetReceiverDispatcher(Context context, BroadcastReceiver broadcastReceiver) {
        ReceiverDispatcher receiverDispatcher;
        ReceiverDispatcher receiverDispatcher2;
        IIntentReceiver iIntentReceiver;
        synchronized (this.mReceivers) {
            ArrayMap<BroadcastReceiver, ReceiverDispatcher> arrayMap = this.mReceivers.get(context);
            if (arrayMap == null || (receiverDispatcher2 = arrayMap.get(broadcastReceiver)) == null) {
                ArrayMap<BroadcastReceiver, ReceiverDispatcher> arrayMap2 = this.mUnregisteredReceivers.get(context);
                if (arrayMap2 != null && (receiverDispatcher = arrayMap2.get(broadcastReceiver)) != null) {
                    throw new IllegalArgumentException("Unregistering Receiver " + broadcastReceiver + " that was already unregistered", receiverDispatcher.getUnregisterLocation());
                }
                if (context != null) {
                    throw new IllegalArgumentException("Receiver not registered: " + broadcastReceiver);
                }
                throw new IllegalStateException("Unbinding Receiver " + broadcastReceiver + " from Context that is no longer in use: " + context);
            }
            arrayMap.remove(broadcastReceiver);
            if (arrayMap.size() == 0) {
                this.mReceivers.remove(context);
            }
            if (broadcastReceiver.getDebugUnregister()) {
                ArrayMap<BroadcastReceiver, ReceiverDispatcher> arrayMap3 = this.mUnregisteredReceivers.get(context);
                if (arrayMap3 == null) {
                    arrayMap3 = new ArrayMap<>();
                    this.mUnregisteredReceivers.put(context, arrayMap3);
                }
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Originally unregistered here:");
                illegalArgumentException.fillInStackTrace();
                receiverDispatcher2.setUnregisterLocation(illegalArgumentException);
                arrayMap3.put(broadcastReceiver, receiverDispatcher2);
            }
            receiverDispatcher2.mForgotten = true;
            iIntentReceiver = receiverDispatcher2.getIIntentReceiver();
        }
        return iIntentReceiver;
    }

    public final IServiceConnection forgetServiceDispatcher(Context context, ServiceConnection serviceConnection) {
        ServiceDispatcher serviceDispatcher;
        ServiceDispatcher serviceDispatcher2;
        IServiceConnection iServiceConnection;
        synchronized (this.mServices) {
            ArrayMap<ServiceConnection, ServiceDispatcher> arrayMap = this.mServices.get(context);
            if (arrayMap == null || (serviceDispatcher2 = arrayMap.get(serviceConnection)) == null) {
                ArrayMap<ServiceConnection, ServiceDispatcher> arrayMap2 = this.mUnboundServices.get(context);
                if (arrayMap2 != null && (serviceDispatcher = arrayMap2.get(serviceConnection)) != null) {
                    throw new IllegalArgumentException("Unbinding Service " + serviceConnection + " that was already unbound", serviceDispatcher.getUnbindLocation());
                }
                if (context != null) {
                    throw new IllegalArgumentException("Service not registered: " + serviceConnection);
                }
                throw new IllegalStateException("Unbinding Service " + serviceConnection + " from Context that is no longer in use: " + context);
            }
            arrayMap.remove(serviceConnection);
            serviceDispatcher2.doForget();
            if (arrayMap.size() == 0) {
                this.mServices.remove(context);
            }
            if ((serviceDispatcher2.getFlags() & 2) != 0) {
                ArrayMap<ServiceConnection, ServiceDispatcher> arrayMap3 = this.mUnboundServices.get(context);
                if (arrayMap3 == null) {
                    arrayMap3 = new ArrayMap<>();
                    this.mUnboundServices.put(context, arrayMap3);
                }
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Originally unbound here:");
                illegalArgumentException.fillInStackTrace();
                serviceDispatcher2.setUnbindLocation(illegalArgumentException);
                arrayMap3.put(serviceConnection, serviceDispatcher2);
            }
            iServiceConnection = serviceDispatcher2.getIServiceConnection();
        }
        return iServiceConnection;
    }

    public String getAppDir() {
        return this.mAppDir;
    }

    public Application getApplication() {
        return this.mApplication;
    }

    public ApplicationInfo getApplicationInfo() {
        return this.mApplicationInfo;
    }

    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    public ClassLoader getClassLoader() {
        ClassLoader classLoader;
        synchronized (this) {
            if (this.mClassLoader == null) {
                createOrUpdateClassLoaderLocked(null);
            }
            classLoader = this.mClassLoader;
        }
        return classLoader;
    }

    public CompatibilityInfo getCompatibilityInfo() {
        return this.mDisplayAdjustments.getCompatibilityInfo();
    }

    public File getCredentialProtectedDataDirFile() {
        return this.mCredentialProtectedDataDirFile;
    }

    public String getDataDir() {
        return this.mDataDir;
    }

    public File getDataDirFile() {
        return this.mDataDirFile;
    }

    public File getDeviceProtectedDataDirFile() {
        return this.mDeviceProtectedDataDirFile;
    }

    public String getLibDir() {
        return this.mLibDir;
    }

    public String[] getOverlayDirs() {
        return this.mOverlayDirs;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public IIntentReceiver getReceiverDispatcher(BroadcastReceiver broadcastReceiver, Context context, Handler handler, Instrumentation instrumentation, boolean z2) {
        ArrayMap<BroadcastReceiver, ReceiverDispatcher> arrayMap;
        IIntentReceiver iIntentReceiver;
        synchronized (this.mReceivers) {
            ReceiverDispatcher receiverDispatcher = null;
            if (z2) {
                try {
                    arrayMap = this.mReceivers.get(context);
                    if (arrayMap != null) {
                        receiverDispatcher = arrayMap.get(broadcastReceiver);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                arrayMap = null;
            }
            if (receiverDispatcher == null) {
                receiverDispatcher = new ReceiverDispatcher(broadcastReceiver, context, handler, instrumentation, z2);
                if (z2) {
                    if (arrayMap == null) {
                        arrayMap = new ArrayMap<>();
                        this.mReceivers.put(context, arrayMap);
                    }
                    arrayMap.put(broadcastReceiver, receiverDispatcher);
                }
            } else {
                receiverDispatcher.validate(context, handler);
            }
            receiverDispatcher.mForgotten = false;
            iIntentReceiver = receiverDispatcher.getIIntentReceiver();
        }
        return iIntentReceiver;
    }

    public String getResDir() {
        return this.mResDir;
    }

    public Resources getResources() {
        if (this.mResources == null) {
            try {
                this.mResources = ResourcesManager.getInstance().getResources(null, this.mResDir, getSplitPaths(null), this.mOverlayDirs, this.mApplicationInfo.sharedLibraryFiles, 0, null, getCompatibilityInfo(), getClassLoader());
            } catch (PackageManager.NameNotFoundException unused) {
                throw new AssertionError("null split not found");
            }
        }
        return this.mResources;
    }

    public final IServiceConnection getServiceDispatcher(ServiceConnection serviceConnection, Context context, Handler handler, int i2) {
        IServiceConnection iServiceConnection;
        synchronized (this.mServices) {
            ArrayMap<ServiceConnection, ServiceDispatcher> arrayMap = this.mServices.get(context);
            ServiceDispatcher serviceDispatcher = arrayMap != null ? arrayMap.get(serviceConnection) : null;
            if (serviceDispatcher == null) {
                serviceDispatcher = new ServiceDispatcher(serviceConnection, context, handler, i2);
                if (arrayMap == null) {
                    arrayMap = new ArrayMap<>();
                    this.mServices.put(context, arrayMap);
                }
                arrayMap.put(serviceConnection, serviceDispatcher);
            } else {
                serviceDispatcher.validate(context, handler);
            }
            iServiceConnection = serviceDispatcher.getIServiceConnection();
        }
        return iServiceConnection;
    }

    public String[] getSplitAppDirs() {
        return this.mSplitAppDirs;
    }

    public ClassLoader getSplitClassLoader(String str) {
        SplitDependencyLoaderImpl splitDependencyLoaderImpl = this.mSplitLoader;
        return splitDependencyLoaderImpl == null ? this.mClassLoader : splitDependencyLoaderImpl.getClassLoaderForSplit(str);
    }

    public String[] getSplitPaths(String str) {
        SplitDependencyLoaderImpl splitDependencyLoaderImpl = this.mSplitLoader;
        return splitDependencyLoaderImpl == null ? this.mSplitResDirs : splitDependencyLoaderImpl.getSplitPathsForSplit(str);
    }

    public String[] getSplitResDirs() {
        return this.mSplitResDirs;
    }

    public int getTargetSdkVersion() {
        return this.mApplicationInfo.targetSdkVersion;
    }

    public void installSystemApplicationInfo(ApplicationInfo applicationInfo, ClassLoader classLoader) {
        this.mApplicationInfo = applicationInfo;
        this.mClassLoader = classLoader;
    }

    public boolean isSecurityViolation() {
        return this.mSecurityViolation;
    }

    public Application makeApplication(boolean z2, Instrumentation instrumentation) {
        Application application = this.mApplication;
        if (application != null) {
            return application;
        }
        Trace.traceBegin(64L, "makeApplication");
        String str = this.mApplicationInfo.className;
        if (z2 || str == null) {
            str = "android.app.Application";
        }
        Application applicationNewApplication = null;
        try {
            ClassLoader classLoader = getClassLoader();
            if (!this.mPackageName.equals(ZenModeConfig.SYSTEM_AUTHORITY)) {
                Trace.traceBegin(64L, "initializeJavaContextClassLoader");
                initializeJavaContextClassLoader();
                Trace.traceEnd(64L);
            }
            ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this.mActivityThread, this);
            applicationNewApplication = this.mActivityThread.mInstrumentation.newApplication(classLoader, str, contextImplCreateAppContext);
            contextImplCreateAppContext.setOuterContext(applicationNewApplication);
        } catch (Exception e2) {
            if (!this.mActivityThread.mInstrumentation.onException(applicationNewApplication, e2)) {
                Trace.traceEnd(64L);
                StringBuilder sbV = android.accessibilityservice.c.v("Unable to instantiate application ", str, ": ");
                sbV.append(e2.toString());
                throw new RuntimeException(sbV.toString(), e2);
            }
        }
        this.mActivityThread.mAllApplications.add(applicationNewApplication);
        this.mApplication = applicationNewApplication;
        if (instrumentation != null) {
            try {
                instrumentation.callApplicationOnCreate(applicationNewApplication);
            } catch (Exception e3) {
                if (!instrumentation.onException(applicationNewApplication, e3)) {
                    Trace.traceEnd(64L);
                    throw new RuntimeException("Unable to create application " + applicationNewApplication.getClass().getName() + ": " + e3.toString(), e3);
                }
            }
        }
        SparseArray<String> assignedPackageIdentifiers = getAssets().getAssignedPackageIdentifiers();
        int size = assignedPackageIdentifiers.size();
        for (int i2 = 0; i2 < size; i2++) {
            int iKeyAt = assignedPackageIdentifiers.keyAt(i2);
            if (iKeyAt != 1 && iKeyAt != 127) {
                rewriteRValues(getClassLoader(), assignedPackageIdentifiers.valueAt(i2), iKeyAt);
            }
        }
        Trace.traceEnd(64L);
        return applicationNewApplication;
    }

    public void removeContextRegistrations(Context context, String str, String str2) {
        int i2;
        boolean zVmRegistrationLeaksEnabled = StrictMode.vmRegistrationLeaksEnabled();
        synchronized (this.mReceivers) {
            ArrayMap<BroadcastReceiver, ReceiverDispatcher> arrayMapRemove = this.mReceivers.remove(context);
            if (arrayMapRemove != null) {
                for (int i3 = 0; i3 < arrayMapRemove.size(); i3++) {
                    ReceiverDispatcher receiverDispatcherValueAt = arrayMapRemove.valueAt(i3);
                    IntentReceiverLeaked intentReceiverLeaked = new IntentReceiverLeaked(str2 + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + str + " has leaked IntentReceiver " + receiverDispatcherValueAt.getIntentReceiver() + " that was originally registered here. Are you missing a call to unregisterReceiver()?");
                    intentReceiverLeaked.setStackTrace(receiverDispatcherValueAt.getLocation().getStackTrace());
                    Slog.e("ActivityThread", intentReceiverLeaked.getMessage(), intentReceiverLeaked);
                    if (zVmRegistrationLeaksEnabled) {
                        StrictMode.onIntentReceiverLeaked(intentReceiverLeaked);
                    }
                    try {
                        ActivityManager.getService().unregisterReceiver(receiverDispatcherValueAt.getIIntentReceiver());
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
            this.mUnregisteredReceivers.remove(context);
        }
        synchronized (this.mServices) {
            ArrayMap<ServiceConnection, ServiceDispatcher> arrayMapRemove2 = this.mServices.remove(context);
            if (arrayMapRemove2 != null) {
                for (i2 = 0; i2 < arrayMapRemove2.size(); i2++) {
                    ServiceDispatcher serviceDispatcherValueAt = arrayMapRemove2.valueAt(i2);
                    ServiceConnectionLeaked serviceConnectionLeaked = new ServiceConnectionLeaked(str2 + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + str + " has leaked ServiceConnection " + serviceDispatcherValueAt.getServiceConnection() + " that was originally bound here");
                    serviceConnectionLeaked.setStackTrace(serviceDispatcherValueAt.getLocation().getStackTrace());
                    Slog.e("ActivityThread", serviceConnectionLeaked.getMessage(), serviceConnectionLeaked);
                    if (zVmRegistrationLeaksEnabled) {
                        StrictMode.onServiceConnectionLeaked(serviceConnectionLeaked);
                    }
                    try {
                        ActivityManager.getService().unbindService(serviceDispatcherValueAt.getIServiceConnection());
                        serviceDispatcherValueAt.doForget();
                    } catch (RemoteException e3) {
                        throw e3.rethrowFromSystemServer();
                    }
                }
            }
            this.mUnboundServices.remove(context);
        }
    }

    public void setCompatibilityInfo(CompatibilityInfo compatibilityInfo) {
        this.mDisplayAdjustments.setCompatibilityInfo(compatibilityInfo);
    }

    public void updateApplicationInfo(ApplicationInfo applicationInfo, List<String> list) {
        boolean z2;
        setApplicationInfo(applicationInfo);
        ArrayList<String> arrayList = new ArrayList();
        makePaths(this.mActivityThread, applicationInfo, arrayList);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        if (list != null) {
            for (String str : arrayList) {
                String strSubstring = str.substring(str.lastIndexOf(File.separator));
                Iterator<String> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z2 = false;
                        break;
                    }
                    String next = it.next();
                    if (strSubstring.equals(next.substring(next.lastIndexOf(File.separator)))) {
                        z2 = true;
                        break;
                    }
                }
                if (!z2) {
                    arrayList2.add(str);
                }
            }
        } else {
            arrayList2.addAll(arrayList);
        }
        synchronized (this) {
            createOrUpdateClassLoaderLocked(arrayList2);
            if (this.mResources != null) {
                try {
                    this.mResources = ResourcesManager.getInstance().getResources(null, this.mResDir, getSplitPaths(null), this.mOverlayDirs, this.mApplicationInfo.sharedLibraryFiles, 0, null, getCompatibilityInfo(), getClassLoader());
                } catch (PackageManager.NameNotFoundException unused) {
                    throw new AssertionError("null split not found");
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0074  */
    public static void makePaths(ActivityThread activityThread, boolean z2, ApplicationInfo applicationInfo, List<String> list, List<String> list2) {
        String[] librariesFor;
        String str = applicationInfo.sourceDir;
        String str2 = applicationInfo.nativeLibraryDir;
        String[] strArr = applicationInfo.sharedLibraryFiles;
        list.clear();
        list.add(str);
        if (applicationInfo.splitSourceDirs != null && !applicationInfo.requestsIsolatedSplitLoading()) {
            Collections.addAll(list, applicationInfo.splitSourceDirs);
        }
        if (list2 != null) {
            list2.clear();
        }
        if (activityThread != null) {
            String str3 = activityThread.mInstrumentationPackageName;
            String str4 = activityThread.mInstrumentationAppDir;
            String[] strArr2 = activityThread.mInstrumentationSplitAppDirs;
            String str5 = activityThread.mInstrumentationLibDir;
            String str6 = activityThread.mInstrumentedAppDir;
            String[] strArr3 = activityThread.mInstrumentedSplitAppDirs;
            String str7 = activityThread.mInstrumentedLibDir;
            if (str.equals(str4) || str.equals(str6)) {
                list.clear();
                list.add(str4);
                if (!applicationInfo.requestsIsolatedSplitLoading()) {
                    if (strArr2 != null) {
                        Collections.addAll(list, strArr2);
                    }
                    if (!str4.equals(str6)) {
                        list.add(str6);
                        if (strArr3 != null) {
                            Collections.addAll(list, strArr3);
                        }
                    }
                }
                if (list2 != null) {
                    list2.add(str5);
                    if (!str5.equals(str7)) {
                        list2.add(str7);
                    }
                }
                if (str6.equals(str4)) {
                    librariesFor = null;
                } else {
                    librariesFor = getLibrariesFor(str3);
                }
            } else {
                librariesFor = null;
            }
        } else {
            librariesFor = null;
        }
        if (list2 != null) {
            if (list2.isEmpty()) {
                list2.add(str2);
            }
            String str8 = applicationInfo.primaryCpuAbi;
            if (str8 != null) {
                if (applicationInfo.targetSdkVersion < 24) {
                    list2.add("/system/fake-libs".concat(VMRuntime.is64BitAbi(str8) ? "64" : ""));
                }
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    StringBuilder sbU = android.accessibilityservice.c.u(it.next(), "!/lib/");
                    sbU.append(applicationInfo.primaryCpuAbi);
                    list2.add(sbU.toString());
                }
            }
            if (z2) {
                list2.add(System.getProperty("java.library.path"));
            }
            String str9 = applicationInfo.primaryCpuAbi;
            if (str9 != null && !str9.isEmpty() && applicationInfo.primaryCpuAbi.startsWith("arm")) {
                File file = new File(str2, "libunity.so");
                File file2 = new File(str2, "libmono.so");
                File file3 = new File(str2, "libmain.so");
                if (file.exists() && file2.exists() && file3.exists()) {
                    list2.add("/vendor/lib".concat(VMRuntime.is64BitAbi(applicationInfo.primaryCpuAbi) ? "64" : ""));
                }
            }
        }
        if (strArr != null) {
            int i2 = 0;
            for (String str10 : strArr) {
                if (!list.contains(str10)) {
                    list.add(i2, str10);
                    i2++;
                    appendApkLibPathIfNeeded(str10, applicationInfo, list2);
                }
            }
        }
        if (librariesFor != null) {
            for (String str11 : librariesFor) {
                if (!list.contains(str11)) {
                    list.add(0, str11);
                    appendApkLibPathIfNeeded(str11, applicationInfo, list2);
                }
            }
        }
    }

    public LoadedApk(ActivityThread activityThread) {
        this.mDisplayAdjustments = new DisplayAdjustments();
        this.mReceivers = new ArrayMap<>();
        this.mUnregisteredReceivers = new ArrayMap<>();
        this.mServices = new ArrayMap<>();
        this.mUnboundServices = new ArrayMap<>();
        this.mActivityThread = activityThread;
        ApplicationInfo applicationInfo = new ApplicationInfo();
        this.mApplicationInfo = applicationInfo;
        applicationInfo.packageName = ZenModeConfig.SYSTEM_AUTHORITY;
        this.mPackageName = ZenModeConfig.SYSTEM_AUTHORITY;
        this.mAppDir = null;
        this.mResDir = null;
        this.mSplitAppDirs = null;
        this.mSplitResDirs = null;
        this.mSplitClassLoaderNames = null;
        this.mOverlayDirs = null;
        this.mDataDir = null;
        this.mDataDirFile = null;
        this.mDeviceProtectedDataDirFile = null;
        this.mCredentialProtectedDataDirFile = null;
        this.mLibDir = null;
        this.mBaseClassLoader = null;
        this.mSecurityViolation = false;
        this.mIncludeCode = true;
        this.mRegisterPackage = false;
        this.mClassLoader = ClassLoader.getSystemClassLoader();
        this.mResources = Resources.getSystem();
    }
}
