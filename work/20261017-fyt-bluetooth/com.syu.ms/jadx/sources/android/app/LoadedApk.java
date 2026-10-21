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
import android.content.res.AssetManager;
import android.content.res.CompatibilityInfo;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.Trace;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Slog;
import android.view.DisplayAdjustments;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.Enumeration;
import java.util.Objects;
import u.a;

/* JADX INFO: loaded from: classes.dex */
public final class LoadedApk {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String TAG = "LoadedApk";
    private final ActivityThread mActivityThread;
    private final String mAppDir;
    private Application mApplication;
    private ApplicationInfo mApplicationInfo;
    private final ClassLoader mBaseClassLoader;
    private ClassLoader mClassLoader;
    public int mClientCount;
    private final String mDataDir;
    private final File mDataDirFile;
    private final DisplayAdjustments mDisplayAdjustments;
    private final boolean mIncludeCode;
    private final String mLibDir;
    public final String mPackageName;
    private final ArrayMap<Context, ArrayMap<BroadcastReceiver, ReceiverDispatcher>> mReceivers;
    private final String mResDir;
    public Resources mResources;
    private final boolean mSecurityViolation;
    private final ArrayMap<Context, ArrayMap<ServiceConnection, ServiceDispatcher>> mServices;
    private final String[] mSharedLibraries;
    private final ArrayMap<Context, ArrayMap<ServiceConnection, ServiceDispatcher>> mUnboundServices;
    private final ArrayMap<Context, ArrayMap<BroadcastReceiver, ReceiverDispatcher>> mUnregisteredReceivers;

    public static final class ReceiverDispatcher {
        public final Handler mActivityThread;
        public final Context mContext;
        public boolean mForgotten;
        public final IIntentReceiver.Stub mIIntentReceiver;
        public final Instrumentation mInstrumentation;
        public final IntentReceiverLeaked mLocation;
        public final BroadcastReceiver mReceiver;
        public final boolean mRegistered;
        public RuntimeException mUnregisterLocation;

        public final class Args extends BroadcastReceiver.PendingResult implements Runnable {
            private Intent mCurIntent;
            private final boolean mOrdered;

            public Args(Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3) {
                super(i2, str, bundle, ReceiverDispatcher.this.mRegistered ? 1 : 2, z2, z3, ReceiverDispatcher.this.mIIntentReceiver.asBinder(), i3);
                this.mCurIntent = intent;
                this.mOrdered = z2;
            }

            @Override // java.lang.Runnable
            public void run() {
                BroadcastReceiver broadcastReceiver = ReceiverDispatcher.this.mReceiver;
                boolean z2 = this.mOrdered;
                IActivityManager iActivityManager = ActivityManagerNative.getDefault();
                Intent intent = this.mCurIntent;
                this.mCurIntent = null;
                if (broadcastReceiver == null || ReceiverDispatcher.this.mForgotten) {
                    if (ReceiverDispatcher.this.mRegistered && z2) {
                        sendFinished(iActivityManager);
                        return;
                    }
                    return;
                }
                Trace.traceBegin(64L, "broadcastReceiveReg");
                try {
                    ClassLoader classLoader = ReceiverDispatcher.this.mReceiver.getClass().getClassLoader();
                    intent.setExtrasClassLoader(classLoader);
                    setExtrasClassLoader(classLoader);
                    broadcastReceiver.setPendingResult(this);
                    broadcastReceiver.onReceive(ReceiverDispatcher.this.mContext, intent);
                } catch (Exception e2) {
                    if (ReceiverDispatcher.this.mRegistered && z2) {
                        sendFinished(iActivityManager);
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
        }

        public static final class InnerReceiver extends IIntentReceiver.Stub {
            public final WeakReference<ReceiverDispatcher> mDispatcher;
            public final ReceiverDispatcher mStrongRef;

            public InnerReceiver(ReceiverDispatcher receiverDispatcher, boolean z2) {
                this.mDispatcher = new WeakReference<>(receiverDispatcher);
                this.mStrongRef = z2 ? receiverDispatcher : null;
            }

            @Override // android.content.IIntentReceiver
            public void performReceive(Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3) {
                ReceiverDispatcher receiverDispatcher = this.mDispatcher.get();
                if (receiverDispatcher != null) {
                    receiverDispatcher.performReceive(intent, i2, str, bundle, z2, z3, i3);
                    return;
                }
                IActivityManager iActivityManager = ActivityManagerNative.getDefault();
                if (bundle != null) {
                    try {
                        bundle.setAllowFds(false);
                    } catch (RemoteException unused) {
                        Slog.w(ActivityThread.TAG, "Couldn't finish broadcast to unregistered receiver");
                        return;
                    }
                }
                iActivityManager.finishReceiver(this, i2, str, bundle, false);
            }
        }

        public ReceiverDispatcher(BroadcastReceiver broadcastReceiver, Context context, Handler handler, Instrumentation instrumentation, boolean z2) {
            Objects.requireNonNull(handler, "Handler must not be null");
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
            if (!this.mActivityThread.post(args) && this.mRegistered && z2) {
                args.sendFinished(ActivityManagerNative.getDefault());
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
        private boolean mDied;
        private final int mFlags;
        private boolean mForgotten;
        private final ServiceConnectionLeaked mLocation;
        private RuntimeException mUnbindLocation;
        private final ArrayMap<ComponentName, ConnectionInfo> mActiveConnections = new ArrayMap<>();
        private final InnerConnection mIServiceConnection = new InnerConnection(this);

        public static class ConnectionInfo {
            public IBinder binder;
            public IBinder.DeathRecipient deathMonitor;

            private ConnectionInfo() {
            }
        }

        public final class DeathMonitor implements IBinder.DeathRecipient {
            public final ComponentName mName;
            public final IBinder mService;

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
            public final WeakReference<ServiceDispatcher> mDispatcher;

            public InnerConnection(ServiceDispatcher serviceDispatcher) {
                this.mDispatcher = new WeakReference<>(serviceDispatcher);
            }

            @Override // android.app.IServiceConnection
            public void connected(ComponentName componentName, IBinder iBinder) {
                ServiceDispatcher serviceDispatcher = this.mDispatcher.get();
                if (serviceDispatcher != null) {
                    serviceDispatcher.connected(componentName, iBinder);
                }
            }
        }

        public final class RunConnection implements Runnable {
            public final int mCommand;
            public final ComponentName mName;
            public final IBinder mService;

            public RunConnection(ComponentName componentName, IBinder iBinder, int i2) {
                this.mName = componentName;
                this.mService = iBinder;
                this.mCommand = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                int i2 = this.mCommand;
                if (i2 == 0) {
                    ServiceDispatcher.this.doConnected(this.mName, this.mService);
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

        public void connected(ComponentName componentName, IBinder iBinder) {
            Handler handler = this.mActivityThread;
            if (handler != null) {
                handler.post(new RunConnection(componentName, iBinder, 0));
            } else {
                doConnected(componentName, iBinder);
            }
        }

        public void death(ComponentName componentName, IBinder iBinder) {
            IBinder iBinder2;
            synchronized (this) {
                this.mDied = true;
                ConnectionInfo connectionInfoRemove = this.mActiveConnections.remove(componentName);
                if (connectionInfoRemove != null && (iBinder2 = connectionInfoRemove.binder) == iBinder) {
                    iBinder2.unlinkToDeath(connectionInfoRemove.deathMonitor, 0);
                    Handler handler = this.mActivityThread;
                    if (handler != null) {
                        handler.post(new RunConnection(componentName, iBinder, 1));
                    } else {
                        doDeath(componentName, iBinder);
                    }
                }
            }
        }

        public void doConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (this) {
                if (this.mForgotten) {
                    return;
                }
                ConnectionInfo connectionInfo = this.mActiveConnections.get(componentName);
                if (connectionInfo == null || connectionInfo.binder != iBinder) {
                    if (iBinder != null) {
                        this.mDied = false;
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
                    if (iBinder != null) {
                        this.mConnection.onServiceConnected(componentName, iBinder);
                    }
                }
            }
        }

        public void doDeath(ComponentName componentName, IBinder iBinder) {
            this.mConnection.onServiceDisconnected(componentName);
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
            Slog.w(ActivityThread.TAG, "ClassLoader." + str + ": The class loader returned by Thread.getContextClassLoader() may fail for processes that host multiple applications. You should explicitly specify a context class loader. For example: Thread.setContextClassLoader(getClass().getClassLoader());");
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

    public LoadedApk(ActivityThread activityThread, ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, ClassLoader classLoader, boolean z2, boolean z3) {
        DisplayAdjustments displayAdjustments = new DisplayAdjustments();
        this.mDisplayAdjustments = displayAdjustments;
        this.mReceivers = new ArrayMap<>();
        this.mUnregisteredReceivers = new ArrayMap<>();
        this.mServices = new ArrayMap<>();
        this.mUnboundServices = new ArrayMap<>();
        this.mClientCount = 0;
        this.mActivityThread = activityThread;
        this.mApplicationInfo = applicationInfo;
        String str = applicationInfo.packageName;
        this.mPackageName = str;
        this.mAppDir = applicationInfo.sourceDir;
        int iMyUid = Process.myUid();
        int i2 = applicationInfo.uid;
        this.mResDir = i2 == iMyUid ? applicationInfo.sourceDir : applicationInfo.publicSourceDir;
        if (!UserHandle.isSameUser(i2, iMyUid) && !Process.isIsolated()) {
            applicationInfo.dataDir = PackageManager.getDataDirForUser(UserHandle.getUserId(iMyUid), str);
        }
        this.mSharedLibraries = applicationInfo.sharedLibraryFiles;
        String str2 = applicationInfo.dataDir;
        this.mDataDir = str2;
        this.mDataDirFile = str2 != null ? new File(str2) : null;
        this.mLibDir = applicationInfo.nativeLibraryDir;
        this.mBaseClassLoader = classLoader;
        this.mSecurityViolation = z2;
        this.mIncludeCode = z3;
        displayAdjustments.setCompatibilityInfo(compatibilityInfo);
    }

    private static String combineLibs(String[] strArr, String[] strArr2) {
        StringBuilder sb = new StringBuilder(300);
        boolean z2 = true;
        if (strArr != null) {
            for (String str : strArr) {
                if (z2) {
                    z2 = false;
                } else {
                    sb.append(':');
                }
                sb.append(str);
            }
        }
        boolean z3 = !z2;
        if (strArr2 != null) {
            for (String str2 : strArr2) {
                if (!z3 || !a.b(strArr, str2)) {
                    if (z2) {
                        z2 = false;
                    } else {
                        sb.append(':');
                    }
                    sb.append(str2);
                }
            }
        }
        return sb.toString();
    }

    private static String[] getLibrariesFor(String str) {
        try {
            ApplicationInfo applicationInfo = ActivityThread.getPackageManager().getApplicationInfo(str, 1024, UserHandle.myUserId());
            if (applicationInfo == null) {
                return null;
            }
            return applicationInfo.sharedLibraryFiles;
        } catch (RemoteException e2) {
            throw new AssertionError(e2);
        }
    }

    private void initializeJavaContextClassLoader() {
        try {
            PackageInfo packageInfo = ActivityThread.getPackageManager().getPackageInfo(this.mPackageName, 0, UserHandle.myUserId());
            if (packageInfo != null) {
                boolean z2 = packageInfo.sharedUserId != null;
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                Thread.currentThread().setContextClassLoader(z2 || (applicationInfo != null && !this.mPackageName.equals(applicationInfo.processName)) ? new WarningContextClassLoader() : this.mClassLoader);
            } else {
                throw new IllegalStateException("Unable to get package info for " + this.mPackageName + "; is package not installed?");
            }
        } catch (RemoteException e2) {
            throw new IllegalStateException("Unable to get package info for " + this.mPackageName + "; is system dying?", e2);
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

    public AssetManager getAssets(ActivityThread activityThread) {
        return getResources(activityThread).getAssets();
    }

    public ClassLoader getClassLoader() {
        synchronized (this) {
            ClassLoader classLoader = this.mClassLoader;
            if (classLoader != null) {
                return classLoader;
            }
            if (!this.mIncludeCode || this.mPackageName.equals("android")) {
                ClassLoader classLoader2 = this.mBaseClassLoader;
                if (classLoader2 == null) {
                    this.mClassLoader = ClassLoader.getSystemClassLoader();
                } else {
                    this.mClassLoader = classLoader2;
                }
            } else {
                String str = this.mAppDir;
                String str2 = this.mLibDir;
                ActivityThread activityThread = this.mActivityThread;
                String str3 = activityThread.mInstrumentationAppDir;
                String str4 = activityThread.mInstrumentationAppLibraryDir;
                String str5 = activityThread.mInstrumentationAppPackage;
                String str6 = activityThread.mInstrumentedAppDir;
                String str7 = activityThread.mInstrumentedAppLibraryDir;
                String[] librariesFor = null;
                if (str.equals(str3) || this.mAppDir.equals(str6)) {
                    str = str3 + ":" + str6;
                    str2 = str4 + ":" + str7;
                    if (!str6.equals(str3)) {
                        librariesFor = getLibrariesFor(str5);
                    }
                }
                if (this.mSharedLibraries != null || librariesFor != null) {
                    str = combineLibs(this.mSharedLibraries, librariesFor) + ':' + str;
                }
                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                this.mClassLoader = ApplicationLoaders.getDefault().getClassLoader(str, str2, this.mBaseClassLoader);
                initializeJavaContextClassLoader();
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            }
            return this.mClassLoader;
        }
    }

    public CompatibilityInfo getCompatibilityInfo() {
        return this.mDisplayAdjustments.getCompatibilityInfo();
    }

    public String getDataDir() {
        return this.mDataDir;
    }

    public File getDataDirFile() {
        return this.mDataDirFile;
    }

    public String getLibDir() {
        return this.mLibDir;
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

    public Resources getResources(ActivityThread activityThread) {
        if (this.mResources == null) {
            this.mResources = activityThread.getTopLevelResources(this.mResDir, 0, null, this);
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

    public void installSystemApplicationInfo(ApplicationInfo applicationInfo) {
        this.mApplicationInfo = applicationInfo;
    }

    public boolean isSecurityViolation() {
        return this.mSecurityViolation;
    }

    public Application makeApplication(boolean z2, Instrumentation instrumentation) {
        Application application = this.mApplication;
        if (application != null) {
            return application;
        }
        Application applicationNewApplication = null;
        String str = this.mApplicationInfo.className;
        if (z2 || str == null) {
            str = "android.app.Application";
        }
        try {
            ClassLoader classLoader = getClassLoader();
            ContextImpl contextImplCreateAppContext = ContextImpl.createAppContext(this.mActivityThread, this);
            applicationNewApplication = this.mActivityThread.mInstrumentation.newApplication(classLoader, str, contextImplCreateAppContext);
            contextImplCreateAppContext.setOuterContext(applicationNewApplication);
        } catch (Exception e2) {
            if (!this.mActivityThread.mInstrumentation.onException(applicationNewApplication, e2)) {
                throw new RuntimeException("Unable to instantiate application " + str + ": " + e2.toString(), e2);
            }
        }
        this.mActivityThread.mAllApplications.add(applicationNewApplication);
        this.mApplication = applicationNewApplication;
        if (instrumentation != null) {
            try {
                instrumentation.callApplicationOnCreate(applicationNewApplication);
            } catch (Exception e3) {
                if (!instrumentation.onException(applicationNewApplication, e3)) {
                    throw new RuntimeException("Unable to create application " + applicationNewApplication.getClass().getName() + ": " + e3.toString(), e3);
                }
            }
        }
        return applicationNewApplication;
    }

    public void removeContextRegistrations(Context context, String str, String str2) {
        boolean zVmRegistrationLeaksEnabled = StrictMode.vmRegistrationLeaksEnabled();
        ArrayMap<BroadcastReceiver, ReceiverDispatcher> arrayMapRemove = this.mReceivers.remove(context);
        if (arrayMapRemove != null) {
            for (int i2 = 0; i2 < arrayMapRemove.size(); i2++) {
                ReceiverDispatcher receiverDispatcherValueAt = arrayMapRemove.valueAt(i2);
                IntentReceiverLeaked intentReceiverLeaked = new IntentReceiverLeaked(str2 + " " + str + " has leaked IntentReceiver " + receiverDispatcherValueAt.getIntentReceiver() + " that was originally registered here. Are you missing a call to unregisterReceiver()?");
                intentReceiverLeaked.setStackTrace(receiverDispatcherValueAt.getLocation().getStackTrace());
                Slog.e(ActivityThread.TAG, intentReceiverLeaked.getMessage(), intentReceiverLeaked);
                if (zVmRegistrationLeaksEnabled) {
                    StrictMode.onIntentReceiverLeaked(intentReceiverLeaked);
                }
                try {
                    ActivityManagerNative.getDefault().unregisterReceiver(receiverDispatcherValueAt.getIIntentReceiver());
                } catch (RemoteException unused) {
                }
            }
        }
        this.mUnregisteredReceivers.remove(context);
        ArrayMap<ServiceConnection, ServiceDispatcher> arrayMapRemove2 = this.mServices.remove(context);
        if (arrayMapRemove2 != null) {
            for (int i3 = 0; i3 < arrayMapRemove2.size(); i3++) {
                ServiceDispatcher serviceDispatcherValueAt = arrayMapRemove2.valueAt(i3);
                ServiceConnectionLeaked serviceConnectionLeaked = new ServiceConnectionLeaked(str2 + " " + str + " has leaked ServiceConnection " + serviceDispatcherValueAt.getServiceConnection() + " that was originally bound here");
                serviceConnectionLeaked.setStackTrace(serviceDispatcherValueAt.getLocation().getStackTrace());
                Slog.e(ActivityThread.TAG, serviceConnectionLeaked.getMessage(), serviceConnectionLeaked);
                if (zVmRegistrationLeaksEnabled) {
                    StrictMode.onServiceConnectionLeaked(serviceConnectionLeaked);
                }
                try {
                    ActivityManagerNative.getDefault().unbindService(serviceDispatcherValueAt.getIServiceConnection());
                } catch (RemoteException unused2) {
                }
                serviceDispatcherValueAt.doForget();
            }
        }
        this.mUnboundServices.remove(context);
    }

    public void setCompatibilityInfo(CompatibilityInfo compatibilityInfo) {
        this.mDisplayAdjustments.setCompatibilityInfo(compatibilityInfo);
    }

    public LoadedApk(ActivityThread activityThread) {
        this.mDisplayAdjustments = new DisplayAdjustments();
        this.mReceivers = new ArrayMap<>();
        this.mUnregisteredReceivers = new ArrayMap<>();
        this.mServices = new ArrayMap<>();
        this.mUnboundServices = new ArrayMap<>();
        this.mClientCount = 0;
        this.mActivityThread = activityThread;
        ApplicationInfo applicationInfo = new ApplicationInfo();
        this.mApplicationInfo = applicationInfo;
        applicationInfo.packageName = "android";
        this.mPackageName = "android";
        this.mAppDir = null;
        this.mResDir = null;
        this.mSharedLibraries = null;
        this.mDataDir = null;
        this.mDataDirFile = null;
        this.mLibDir = null;
        this.mBaseClassLoader = null;
        this.mSecurityViolation = false;
        this.mIncludeCode = true;
        this.mClassLoader = ClassLoader.getSystemClassLoader();
        this.mResources = Resources.getSystem();
    }
}
