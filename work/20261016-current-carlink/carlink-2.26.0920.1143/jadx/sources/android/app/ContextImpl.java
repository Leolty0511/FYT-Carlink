package android.app;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IContentProvider;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.CompatResources;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.service.notification.ZenModeConfig;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.AndroidRuntimeException;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Slog;
import android.view.Display;
import android.view.DisplayAdjustments;
import android.view.autofill.AutofillManager;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Objects;
import libcore.io.Memory;

/* JADX INFO: loaded from: classes.dex */
class ContextImpl extends Context {
    private static final boolean DEBUG = false;
    private static final String TAG = "ContextImpl";
    private static final String XATTR_INODE_CACHE = "user.inode_cache";
    private static final String XATTR_INODE_CODE_CACHE = "user.inode_code_cache";

    @GuardedBy("ContextImpl.class")
    private static ArrayMap<String, ArrayMap<File, SharedPreferencesImpl>> sSharedPrefsCache;
    private final IBinder mActivityToken;
    private final String mBasePackageName;

    @GuardedBy("mSync")
    private File mCacheDir;
    private ClassLoader mClassLoader;

    @GuardedBy("mSync")
    private File mCodeCacheDir;
    private final ApplicationContentResolver mContentResolver;

    @GuardedBy("mSync")
    private File mDatabasesDir;
    private Display mDisplay;

    @GuardedBy("mSync")
    private File mFilesDir;
    private final int mFlags;
    final ActivityThread mMainThread;

    @GuardedBy("mSync")
    private File mNoBackupFilesDir;
    private final String mOpPackageName;
    final LoadedApk mPackageInfo;
    private PackageManager mPackageManager;

    @GuardedBy("mSync")
    private File mPreferencesDir;
    private Resources mResources;
    private final ResourcesManager mResourcesManager;

    @GuardedBy("ContextImpl.class")
    private ArrayMap<String, File> mSharedPrefsPaths;
    private String mSplitName;
    private final UserHandle mUser;
    private int mThemeResource = 0;
    private Resources.Theme mTheme = null;
    private Context mReceiverRestrictedContext = null;
    private AutofillManager.AutofillClient mAutofillClient = null;
    private final Object mSync = new Object();
    final Object[] mServiceCache = SystemServiceRegistry.createServiceCache();
    private Context mOuterContext = this;

    public static final class ApplicationContentResolver extends ContentResolver {
        private final ActivityThread mMainThread;
        private final UserHandle mUser;

        public ApplicationContentResolver(Context context, ActivityThread activityThread, UserHandle userHandle) {
            super(context);
            this.mMainThread = (ActivityThread) Preconditions.checkNotNull(activityThread);
            this.mUser = (UserHandle) Preconditions.checkNotNull(userHandle);
        }

        @Override // android.content.ContentResolver
        public IContentProvider acquireExistingProvider(Context context, String str) {
            return this.mMainThread.acquireExistingProvider(context, ContentProvider.getAuthorityWithoutUserId(str), resolveUserIdFromAuthority(str), true);
        }

        @Override // android.content.ContentResolver
        public IContentProvider acquireProvider(Context context, String str) {
            return this.mMainThread.acquireProvider(context, ContentProvider.getAuthorityWithoutUserId(str), resolveUserIdFromAuthority(str), true);
        }

        @Override // android.content.ContentResolver
        public IContentProvider acquireUnstableProvider(Context context, String str) {
            return this.mMainThread.acquireProvider(context, ContentProvider.getAuthorityWithoutUserId(str), resolveUserIdFromAuthority(str), false);
        }

        @Override // android.content.ContentResolver
        public void appNotRespondingViaProvider(IContentProvider iContentProvider) {
            this.mMainThread.appNotRespondingViaProvider(iContentProvider.asBinder());
        }

        @Override // android.content.ContentResolver
        public boolean releaseProvider(IContentProvider iContentProvider) {
            return this.mMainThread.releaseProvider(iContentProvider, true);
        }

        @Override // android.content.ContentResolver
        public boolean releaseUnstableProvider(IContentProvider iContentProvider) {
            return this.mMainThread.releaseProvider(iContentProvider, false);
        }

        public int resolveUserIdFromAuthority(String str) {
            return ContentProvider.getUserIdFromAuthority(str, this.mUser.getIdentifier());
        }

        @Override // android.content.ContentResolver
        public void unstableProviderDied(IContentProvider iContentProvider) {
            this.mMainThread.handleUnstableProviderDied(iContentProvider.asBinder(), true);
        }
    }

    private ContextImpl(ContextImpl contextImpl, ActivityThread activityThread, LoadedApk loadedApk, String str, IBinder iBinder, UserHandle userHandle, int i2, ClassLoader classLoader) {
        this.mSplitName = null;
        if ((i2 & 24) == 0) {
            File dataDirFile = loadedApk.getDataDirFile();
            if (Objects.equals(dataDirFile, loadedApk.getCredentialProtectedDataDirFile())) {
                i2 |= 16;
            } else if (Objects.equals(dataDirFile, loadedApk.getDeviceProtectedDataDirFile())) {
                i2 |= 8;
            }
        }
        this.mMainThread = activityThread;
        this.mActivityToken = iBinder;
        this.mFlags = i2;
        userHandle = userHandle == null ? Process.myUserHandle() : userHandle;
        this.mUser = userHandle;
        this.mPackageInfo = loadedApk;
        this.mSplitName = str;
        this.mClassLoader = classLoader;
        this.mResourcesManager = ResourcesManager.getInstance();
        if (contextImpl != null) {
            this.mBasePackageName = contextImpl.mBasePackageName;
            this.mOpPackageName = contextImpl.mOpPackageName;
            setResources(contextImpl.mResources);
            this.mDisplay = contextImpl.mDisplay;
        } else {
            String str2 = loadedApk.mPackageName;
            this.mBasePackageName = str2;
            int i3 = loadedApk.getApplicationInfo().uid;
            if (i3 != 1000 || i3 == Process.myUid()) {
                this.mOpPackageName = str2;
            } else {
                this.mOpPackageName = ActivityThread.currentPackageName();
            }
        }
        this.mContentResolver = new ApplicationContentResolver(this, activityThread, userHandle);
    }

    private boolean bindServiceCommon(Intent intent, ServiceConnection serviceConnection, int i2, Handler handler, UserHandle userHandle) {
        LoadedApk loadedApk;
        if (serviceConnection == null) {
            throw new IllegalArgumentException("connection is null");
        }
        LoadedApk loadedApk2 = this.mPackageInfo;
        if (loadedApk2 == null) {
            throw new RuntimeException("Not supported in system context");
        }
        IServiceConnection serviceDispatcher = loadedApk2.getServiceDispatcher(serviceConnection, getOuterContext(), handler, i2);
        validateServiceIntent(intent);
        try {
            int i3 = (getActivityToken() != null || (i2 & 1) != 0 || (loadedApk = this.mPackageInfo) == null || loadedApk.getApplicationInfo().targetSdkVersion >= 14) ? i2 : i2 | 32;
            intent.prepareToLeaveProcess(this);
            int iBindService = ActivityManager.getService().bindService(this.mMainThread.getApplicationThread(), getActivityToken(), intent, intent.resolveTypeIfNeeded(getContentResolver()), serviceDispatcher, i3, getOpPackageName(), userHandle.getIdentifier());
            if (iBindService >= 0) {
                return iBindService != 0;
            }
            throw new SecurityException("Not allowed to bind to service " + intent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private void checkMode(int i2) {
        if (getApplicationInfo().targetSdkVersion >= 24) {
            if ((i2 & 1) != 0) {
                throw new SecurityException("MODE_WORLD_READABLE no longer supported");
            }
            if ((i2 & 2) != 0) {
                throw new SecurityException("MODE_WORLD_WRITEABLE no longer supported");
            }
        }
    }

    public static ContextImpl createActivityContext(ActivityThread activityThread, LoadedApk loadedApk, ActivityInfo activityInfo, IBinder iBinder, int i2, Configuration configuration) {
        String[] strArr;
        ClassLoader classLoader;
        if (loadedApk == null) {
            throw new IllegalArgumentException("packageInfo");
        }
        String[] splitResDirs = loadedApk.getSplitResDirs();
        ClassLoader classLoader2 = loadedApk.getClassLoader();
        if (loadedApk.getApplicationInfo().requestsIsolatedSplitLoading()) {
            Trace.traceBegin(8192L, "SplitDependencies");
            try {
                try {
                    ClassLoader splitClassLoader = loadedApk.getSplitClassLoader(activityInfo.splitName);
                    String[] splitPaths = loadedApk.getSplitPaths(activityInfo.splitName);
                    Trace.traceEnd(8192L);
                    classLoader = splitClassLoader;
                    strArr = splitPaths;
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new RuntimeException(e2);
                }
            } catch (Throwable th) {
                Trace.traceEnd(8192L);
                throw th;
            }
        } else {
            strArr = splitResDirs;
            classLoader = classLoader2;
        }
        ContextImpl contextImpl = new ContextImpl(null, activityThread, loadedApk, activityInfo.splitName, iBinder, null, 0, classLoader);
        int i3 = i2 != -1 ? i2 : 0;
        CompatibilityInfo compatibilityInfo = i3 == 0 ? loadedApk.getCompatibilityInfo() : CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO;
        ResourcesManager resourcesManager = ResourcesManager.getInstance();
        contextImpl.setResources(resourcesManager.createBaseActivityResources(iBinder, loadedApk.getResDir(), strArr, loadedApk.getOverlayDirs(), loadedApk.getApplicationInfo().sharedLibraryFiles, i3, configuration, compatibilityInfo, classLoader));
        contextImpl.mDisplay = resourcesManager.getAdjustedDisplay(i3, contextImpl.getResources());
        return contextImpl;
    }

    public static ContextImpl createAppContext(ActivityThread activityThread, LoadedApk loadedApk) {
        if (loadedApk == null) {
            throw new IllegalArgumentException("packageInfo");
        }
        ContextImpl contextImpl = new ContextImpl(null, activityThread, loadedApk, null, null, null, 0, null);
        contextImpl.setResources(loadedApk.getResources());
        return contextImpl;
    }

    private static Resources createResources(IBinder iBinder, LoadedApk loadedApk, String str, int i2, Configuration configuration, CompatibilityInfo compatibilityInfo) {
        try {
            return ResourcesManager.getInstance().getResources(iBinder, loadedApk.getResDir(), loadedApk.getSplitPaths(str), loadedApk.getOverlayDirs(), loadedApk.getApplicationInfo().sharedLibraryFiles, i2, configuration, compatibilityInfo, loadedApk.getSplitClassLoader(str));
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static ContextImpl createSystemContext(ActivityThread activityThread) {
        LoadedApk loadedApk = new LoadedApk(activityThread);
        ContextImpl contextImpl = new ContextImpl(null, activityThread, loadedApk, null, null, null, 0, null);
        contextImpl.setResources(loadedApk.getResources());
        contextImpl.mResources.updateConfiguration(contextImpl.mResourcesManager.getConfiguration(), contextImpl.mResourcesManager.getDisplayMetrics());
        return contextImpl;
    }

    public static ContextImpl createSystemUiContext(ContextImpl contextImpl) {
        LoadedApk loadedApk = contextImpl.mPackageInfo;
        ContextImpl contextImpl2 = new ContextImpl(null, contextImpl.mMainThread, loadedApk, null, null, null, 0, null);
        contextImpl2.setResources(createResources(null, loadedApk, null, 0, null, loadedApk.getCompatibilityInfo()));
        return contextImpl2;
    }

    private void enforce(String str, int i2, boolean z2, int i3, String str2) {
        StringBuilder sb;
        String str3;
        if (i2 != 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2 != null ? str2.concat(": ") : "");
            if (z2) {
                sb = new StringBuilder("Neither user ");
                sb.append(i3);
                str3 = " nor current process has ";
            } else {
                sb = new StringBuilder("uid ");
                sb.append(i3);
                str3 = " does not have ";
            }
            sb.append(str3);
            sb2.append(sb.toString());
            sb2.append(str);
            sb2.append(".");
            throw new SecurityException(sb2.toString());
        }
    }

    private void enforceForUri(int i2, int i3, boolean z2, int i4, Uri uri, String str) {
        StringBuilder sb;
        String str2;
        if (i3 != 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str != null ? str.concat(": ") : "");
            if (z2) {
                sb = new StringBuilder("Neither user ");
                sb.append(i4);
                str2 = " nor current process has ";
            } else {
                sb = new StringBuilder("User ");
                sb.append(i4);
                str2 = " does not have ";
            }
            sb.append(str2);
            sb2.append(sb.toString());
            sb2.append(uriModeFlagToString(i2));
            sb2.append(" permission on ");
            sb2.append(uri);
            sb2.append(".");
            throw new SecurityException(sb2.toString());
        }
    }

    private File[] ensureExternalDirsExistOrFilter(File[] fileArr) {
        File[] fileArr2 = new File[fileArr.length];
        for (int i2 = 0; i2 < fileArr.length; i2++) {
            File file = fileArr[i2];
            if (!file.exists() && !file.mkdirs() && !file.exists()) {
                try {
                    int iMkdirs = IStorageManager.Stub.asInterface(ServiceManager.getService("mount")).mkdirs(getPackageName(), file.getAbsolutePath());
                    if (iMkdirs != 0) {
                        Log.w(TAG, "Failed to ensure " + file + ": " + iMkdirs);
                        file = null;
                    }
                } catch (Exception e2) {
                    Log.w(TAG, "Failed to ensure " + file + ": " + e2);
                }
            }
            fileArr2[i2] = file;
        }
        return fileArr2;
    }

    private static File ensurePrivateCacheDirExists(File file, String str) {
        return ensurePrivateDirExists(file, 1529, UserHandle.getCacheAppGid(Process.myUid()), str);
    }

    private static File ensurePrivateDirExists(File file) {
        return ensurePrivateDirExists(file, 505, -1, null);
    }

    private File getDatabasesDir() {
        File fileEnsurePrivateDirExists;
        synchronized (this.mSync) {
            if (this.mDatabasesDir == null) {
                if (ZenModeConfig.SYSTEM_AUTHORITY.equals(getPackageName())) {
                    this.mDatabasesDir = new File("/data/system");
                } else {
                    this.mDatabasesDir = new File(getDataDir(), "databases");
                }
            }
            fileEnsurePrivateDirExists = ensurePrivateDirExists(this.mDatabasesDir);
        }
        return fileEnsurePrivateDirExists;
    }

    public static ContextImpl getImpl(Context context) {
        Context baseContext;
        while ((context instanceof ContextWrapper) && (baseContext = ((ContextWrapper) context).getBaseContext()) != null) {
            context = baseContext;
        }
        return (ContextImpl) context;
    }

    private File getPreferencesDir() {
        File fileEnsurePrivateDirExists;
        synchronized (this.mSync) {
            if (this.mPreferencesDir == null) {
                this.mPreferencesDir = new File(getDataDir(), "shared_prefs");
            }
            fileEnsurePrivateDirExists = ensurePrivateDirExists(this.mPreferencesDir);
        }
        return fileEnsurePrivateDirExists;
    }

    private ArrayMap<File, SharedPreferencesImpl> getSharedPreferencesCacheLocked() {
        if (sSharedPrefsCache == null) {
            sSharedPrefsCache = new ArrayMap<>();
        }
        String packageName = getPackageName();
        ArrayMap<File, SharedPreferencesImpl> arrayMap = sSharedPrefsCache.get(packageName);
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap<File, SharedPreferencesImpl> arrayMap2 = new ArrayMap<>();
        sSharedPrefsCache.put(packageName, arrayMap2);
        return arrayMap2;
    }

    private WallpaperManager getWallpaperManager() {
        return (WallpaperManager) getSystemService(WallpaperManager.class);
    }

    private void initializeTheme() {
        if (this.mTheme == null) {
            this.mTheme = this.mResources.newTheme();
        }
        this.mTheme.applyStyle(this.mThemeResource, true);
    }

    private File makeFilename(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException(android.accessibilityservice.c.k("File ", str, " contains a path separator"));
    }

    private static int moveFiles(File file, File file2, final String str) {
        int i2 = 0;
        for (File file3 : FileUtils.listFilesOrEmpty(file, new FilenameFilter() { // from class: android.app.ContextImpl.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file4, String str2) {
                return str2.startsWith(str);
            }
        })) {
            File file4 = new File(file2, file3.getName());
            Log.d(TAG, "Migrating " + file3 + " to " + file4);
            try {
                FileUtils.copyFileOrThrow(file3, file4);
                FileUtils.copyPermissions(file3, file4);
                if (!file3.delete()) {
                    throw new IOException("Failed to clean up " + file3);
                }
                if (i2 != -1) {
                    i2++;
                }
            } catch (IOException e2) {
                Log.w(TAG, "Failed to migrate " + file3 + ": " + e2);
                i2 = -1;
            }
        }
        return i2;
    }

    private Intent registerReceiverInternal(BroadcastReceiver broadcastReceiver, int i2, IntentFilter intentFilter, String str, Handler handler, Context context, int i3) {
        IIntentReceiver iIntentReceiver;
        if (broadcastReceiver == null) {
            iIntentReceiver = null;
        } else if (this.mPackageInfo == null || context == null) {
            if (handler == null) {
                handler = this.mMainThread.getHandler();
            }
            iIntentReceiver = new LoadedApk.ReceiverDispatcher(broadcastReceiver, context, handler, null, true).getIIntentReceiver();
        } else {
            if (handler == null) {
                handler = this.mMainThread.getHandler();
            }
            iIntentReceiver = this.mPackageInfo.getReceiverDispatcher(broadcastReceiver, context, handler, this.mMainThread.getInstrumentation(), true);
        }
        try {
            Intent intentRegisterReceiver = ActivityManager.getService().registerReceiver(this.mMainThread.getApplicationThread(), this.mBasePackageName, iIntentReceiver, intentFilter, str, i2, i3);
            if (intentRegisterReceiver != null) {
                intentRegisterReceiver.setExtrasClassLoader(getClassLoader());
                intentRegisterReceiver.prepareToEnterProcess();
            }
            return intentRegisterReceiver;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private int resolveUserId(Uri uri) {
        return ContentProvider.getUserIdFromUri(uri, getUserId());
    }

    public static void setFilePermissionsFromMode(String str, int i2, int i3) {
        int i4 = i3 | 432;
        if ((i2 & 1) != 0) {
            i4 |= 4;
        }
        if ((i2 & 2) != 0) {
            i4 |= 2;
        }
        FileUtils.setPermissions(str, i4, -1, -1);
    }

    private ComponentName startServiceCommon(Intent intent, boolean z2, UserHandle userHandle) {
        try {
            validateServiceIntent(intent);
            intent.prepareToLeaveProcess(this);
            ComponentName componentNameStartService = ActivityManager.getService().startService(this.mMainThread.getApplicationThread(), intent, intent.resolveTypeIfNeeded(getContentResolver()), z2, getOpPackageName(), userHandle.getIdentifier());
            if (componentNameStartService != null) {
                if (componentNameStartService.getPackageName().equals("!")) {
                    throw new SecurityException("Not allowed to start service " + intent + " without permission " + componentNameStartService.getClassName());
                }
                if (componentNameStartService.getPackageName().equals("!!")) {
                    throw new SecurityException("Unable to start service " + intent + ": " + componentNameStartService.getClassName());
                }
                if (componentNameStartService.getPackageName().equals("?")) {
                    throw new IllegalStateException("Not allowed to start service " + intent + ": " + componentNameStartService.getClassName());
                }
            }
            return componentNameStartService;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private boolean stopServiceCommon(Intent intent, UserHandle userHandle) {
        try {
            validateServiceIntent(intent);
            intent.prepareToLeaveProcess(this);
            int iStopService = ActivityManager.getService().stopService(this.mMainThread.getApplicationThread(), intent, intent.resolveTypeIfNeeded(getContentResolver()), userHandle.getIdentifier());
            if (iStopService >= 0) {
                return iStopService != 0;
            }
            throw new SecurityException("Not allowed to stop service " + intent);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private String uriModeFlagToString(int i2) {
        StringBuilder sb = new StringBuilder();
        if ((i2 & 1) != 0) {
            sb.append("read and ");
        }
        if ((i2 & 2) != 0) {
            sb.append("write and ");
        }
        if ((i2 & 64) != 0) {
            sb.append("persistable and ");
        }
        if ((i2 & 128) != 0) {
            sb.append("prefix and ");
        }
        if (sb.length() <= 5) {
            throw new IllegalArgumentException(android.accessibilityservice.c.d("Unknown permission mode flags: ", i2));
        }
        sb.setLength(sb.length() - 5);
        return sb.toString();
    }

    private void validateServiceIntent(Intent intent) {
        if (intent.getComponent() == null && intent.getPackage() == null) {
            if (getApplicationInfo().targetSdkVersion >= 21) {
                throw new IllegalArgumentException("Service Intent must be explicit: " + intent);
            }
            Log.w(TAG, "Implicit intents with startService are not safe: " + intent + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + Debug.getCallers(2, 3));
        }
    }

    private void warnIfCallingFromSystemProcess() {
        if (Process.myUid() == 1000) {
            Slog.w(TAG, "Calling a method in the system process without a qualified user: " + Debug.getCallers(5));
        }
    }

    @Override // android.content.Context
    public boolean bindService(Intent intent, ServiceConnection serviceConnection, int i2) {
        warnIfCallingFromSystemProcess();
        return bindServiceCommon(intent, serviceConnection, i2, this.mMainThread.getHandler(), Process.myUserHandle());
    }

    @Override // android.content.Context
    public boolean bindServiceAsUser(Intent intent, ServiceConnection serviceConnection, int i2, UserHandle userHandle) {
        return bindServiceCommon(intent, serviceConnection, i2, this.mMainThread.getHandler(), userHandle);
    }

    @Override // android.content.Context
    public boolean canLoadUnsafeResources() {
        return getPackageName().equals(getOpPackageName()) || (this.mFlags & 2) != 0;
    }

    @Override // android.content.Context
    public int checkCallingOrSelfPermission(String str) {
        if (str != null) {
            return checkPermission(str, Binder.getCallingPid(), Binder.getCallingUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    @Override // android.content.Context
    public int checkCallingOrSelfUriPermission(Uri uri, int i2) {
        return checkUriPermission(uri, Binder.getCallingPid(), Binder.getCallingUid(), i2);
    }

    @Override // android.content.Context
    public int checkCallingPermission(String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        int callingPid = Binder.getCallingPid();
        if (callingPid != Process.myPid()) {
            return checkPermission(str, callingPid, Binder.getCallingUid());
        }
        return -1;
    }

    @Override // android.content.Context
    public int checkCallingUriPermission(Uri uri, int i2) {
        int callingPid = Binder.getCallingPid();
        if (callingPid != Process.myPid()) {
            return checkUriPermission(uri, callingPid, Binder.getCallingUid(), i2);
        }
        return -1;
    }

    @Override // android.content.Context
    public int checkPermission(String str, int i2, int i3) {
        int appId;
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        IActivityManager service = ActivityManager.getService();
        if (service != null || ((appId = UserHandle.getAppId(i3)) != 0 && appId != 1000)) {
            try {
                return service.checkPermission(str, i2, i3);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        Slog.w(TAG, "Missing ActivityManager; assuming " + i3 + " holds " + str);
        return 0;
    }

    @Override // android.content.Context
    public int checkSelfPermission(String str) {
        if (str != null) {
            return checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    @Override // android.content.Context
    public int checkUriPermission(Uri uri, int i2, int i3, int i4) {
        try {
            return ActivityManager.getService().checkUriPermission(ContentProvider.getUriWithoutUserId(uri), i2, i3, i4, resolveUserId(uri), null);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    @Deprecated
    public void clearWallpaper() {
        getWallpaperManager().clear();
    }

    @Override // android.content.Context
    public Context createApplicationContext(ApplicationInfo applicationInfo, int i2) throws PackageManager.NameNotFoundException {
        LoadedApk packageInfo = this.mMainThread.getPackageInfo(applicationInfo, this.mResources.getCompatibilityInfo(), 1073741824 | i2);
        if (packageInfo != null) {
            ContextImpl contextImpl = new ContextImpl(this, this.mMainThread, packageInfo, null, this.mActivityToken, new UserHandle(UserHandle.getUserId(applicationInfo.uid)), i2, null);
            Display display = this.mDisplay;
            int displayId = display != null ? display.getDisplayId() : 0;
            contextImpl.setResources(createResources(this.mActivityToken, packageInfo, null, displayId, null, getDisplayAdjustments(displayId).getCompatibilityInfo()));
            if (contextImpl.mResources != null) {
                return contextImpl;
            }
        }
        throw new PackageManager.NameNotFoundException(android.accessibilityservice.c.n(new StringBuilder("Application package "), applicationInfo.packageName, " not found"));
    }

    @Override // android.content.Context
    public Context createConfigurationContext(Configuration configuration) {
        if (configuration == null) {
            throw new IllegalArgumentException("overrideConfiguration must not be null");
        }
        ContextImpl contextImpl = new ContextImpl(this, this.mMainThread, this.mPackageInfo, this.mSplitName, this.mActivityToken, this.mUser, this.mFlags, this.mClassLoader);
        Display display = this.mDisplay;
        int displayId = display != null ? display.getDisplayId() : 0;
        contextImpl.setResources(createResources(this.mActivityToken, this.mPackageInfo, this.mSplitName, displayId, configuration, getDisplayAdjustments(displayId).getCompatibilityInfo()));
        return contextImpl;
    }

    @Override // android.content.Context
    public Context createContextForSplit(String str) {
        if (!this.mPackageInfo.getApplicationInfo().requestsIsolatedSplitLoading()) {
            return this;
        }
        ClassLoader splitClassLoader = this.mPackageInfo.getSplitClassLoader(str);
        String[] splitPaths = this.mPackageInfo.getSplitPaths(str);
        ContextImpl contextImpl = new ContextImpl(this, this.mMainThread, this.mPackageInfo, str, this.mActivityToken, this.mUser, this.mFlags, splitClassLoader);
        Display display = this.mDisplay;
        contextImpl.setResources(ResourcesManager.getInstance().getResources(this.mActivityToken, this.mPackageInfo.getResDir(), splitPaths, this.mPackageInfo.getOverlayDirs(), this.mPackageInfo.getApplicationInfo().sharedLibraryFiles, display != null ? display.getDisplayId() : 0, null, this.mPackageInfo.getCompatibilityInfo(), splitClassLoader));
        return contextImpl;
    }

    @Override // android.content.Context
    public Context createCredentialProtectedStorageContext() {
        return new ContextImpl(this, this.mMainThread, this.mPackageInfo, this.mSplitName, this.mActivityToken, this.mUser, (this.mFlags & (-9)) | 16, this.mClassLoader);
    }

    @Override // android.content.Context
    public Context createDeviceProtectedStorageContext() {
        return new ContextImpl(this, this.mMainThread, this.mPackageInfo, this.mSplitName, this.mActivityToken, this.mUser, (this.mFlags & (-17)) | 8, this.mClassLoader);
    }

    @Override // android.content.Context
    public Context createDisplayContext(Display display) {
        if (display == null) {
            throw new IllegalArgumentException("display must not be null");
        }
        ContextImpl contextImpl = new ContextImpl(this, this.mMainThread, this.mPackageInfo, this.mSplitName, this.mActivityToken, this.mUser, this.mFlags, this.mClassLoader);
        int displayId = display.getDisplayId();
        contextImpl.setResources(createResources(this.mActivityToken, this.mPackageInfo, this.mSplitName, displayId, null, getDisplayAdjustments(displayId).getCompatibilityInfo()));
        contextImpl.mDisplay = display;
        return contextImpl;
    }

    @Override // android.content.Context
    public Context createPackageContext(String str, int i2) {
        UserHandle userHandleMyUserHandle = this.mUser;
        if (userHandleMyUserHandle == null) {
            userHandleMyUserHandle = Process.myUserHandle();
        }
        return createPackageContextAsUser(str, i2, userHandleMyUserHandle);
    }

    @Override // android.content.Context
    public Context createPackageContextAsUser(String str, int i2, UserHandle userHandle) throws PackageManager.NameNotFoundException {
        if (str.equals(StorageManager.UUID_SYSTEM) || str.equals(ZenModeConfig.SYSTEM_AUTHORITY)) {
            return new ContextImpl(this, this.mMainThread, this.mPackageInfo, null, this.mActivityToken, userHandle, i2, null);
        }
        LoadedApk packageInfo = this.mMainThread.getPackageInfo(str, this.mResources.getCompatibilityInfo(), i2 | 1073741824, userHandle.getIdentifier());
        if (packageInfo != null) {
            ContextImpl contextImpl = new ContextImpl(this, this.mMainThread, packageInfo, null, this.mActivityToken, userHandle, i2, null);
            Display display = this.mDisplay;
            int displayId = display != null ? display.getDisplayId() : 0;
            contextImpl.setResources(createResources(this.mActivityToken, packageInfo, null, displayId, null, getDisplayAdjustments(displayId).getCompatibilityInfo()));
            if (contextImpl.mResources != null) {
                return contextImpl;
            }
        }
        throw new PackageManager.NameNotFoundException(android.accessibilityservice.c.k("Application package ", str, " not found"));
    }

    @Override // android.content.Context
    public String[] databaseList() {
        return FileUtils.listOrEmpty(getDatabasesDir());
    }

    @Override // android.content.Context
    public boolean deleteDatabase(String str) {
        try {
            return SQLiteDatabase.deleteDatabase(getDatabasePath(str));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // android.content.Context
    public boolean deleteFile(String str) {
        return makeFilename(getFilesDir(), str).delete();
    }

    @Override // android.content.Context
    public boolean deleteSharedPreferences(String str) {
        boolean z2;
        synchronized (ContextImpl.class) {
            File sharedPreferencesPath = getSharedPreferencesPath(str);
            File fileMakeBackupFile = SharedPreferencesImpl.makeBackupFile(sharedPreferencesPath);
            getSharedPreferencesCacheLocked().remove(sharedPreferencesPath);
            sharedPreferencesPath.delete();
            fileMakeBackupFile.delete();
            z2 = (sharedPreferencesPath.exists() || fileMakeBackupFile.exists()) ? false : true;
        }
        return z2;
    }

    @Override // android.content.Context
    public void enforceCallingOrSelfPermission(String str, String str2) {
        enforce(str, checkCallingOrSelfPermission(str), true, Binder.getCallingUid(), str2);
    }

    @Override // android.content.Context
    public void enforceCallingOrSelfUriPermission(Uri uri, int i2, String str) {
        enforceForUri(i2, checkCallingOrSelfUriPermission(uri, i2), true, Binder.getCallingUid(), uri, str);
    }

    @Override // android.content.Context
    public void enforceCallingPermission(String str, String str2) {
        enforce(str, checkCallingPermission(str), false, Binder.getCallingUid(), str2);
    }

    @Override // android.content.Context
    public void enforceCallingUriPermission(Uri uri, int i2, String str) {
        enforceForUri(i2, checkCallingUriPermission(uri, i2), false, Binder.getCallingUid(), uri, str);
    }

    @Override // android.content.Context
    public void enforcePermission(String str, int i2, int i3, String str2) {
        enforce(str, checkPermission(str, i2, i3), false, i3, str2);
    }

    @Override // android.content.Context
    public void enforceUriPermission(Uri uri, int i2, int i3, int i4, String str) {
        enforceForUri(i4, checkUriPermission(uri, i2, i3, i4), false, i3, uri, str);
    }

    @Override // android.content.Context
    public String[] fileList() {
        return FileUtils.listOrEmpty(getFilesDir());
    }

    @Override // android.content.Context
    public IBinder getActivityToken() {
        return this.mActivityToken;
    }

    @Override // android.content.Context
    public Context getApplicationContext() {
        LoadedApk loadedApk = this.mPackageInfo;
        return loadedApk != null ? loadedApk.getApplication() : this.mMainThread.getApplication();
    }

    @Override // android.content.Context
    public ApplicationInfo getApplicationInfo() {
        LoadedApk loadedApk = this.mPackageInfo;
        if (loadedApk != null) {
            return loadedApk.getApplicationInfo();
        }
        throw new RuntimeException("Not supported in system context");
    }

    @Override // android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.Context
    public AutofillManager.AutofillClient getAutofillClient() {
        return this.mAutofillClient;
    }

    @Override // android.content.Context
    public String getBasePackageName() {
        String str = this.mBasePackageName;
        return str != null ? str : getPackageName();
    }

    @Override // android.content.Context
    public File getCacheDir() {
        File fileEnsurePrivateCacheDirExists;
        synchronized (this.mSync) {
            if (this.mCacheDir == null) {
                this.mCacheDir = new File(getDataDir(), "cache");
            }
            fileEnsurePrivateCacheDirExists = ensurePrivateCacheDirExists(this.mCacheDir, XATTR_INODE_CACHE);
        }
        return fileEnsurePrivateCacheDirExists;
    }

    @Override // android.content.Context
    public ClassLoader getClassLoader() {
        ClassLoader classLoader = this.mClassLoader;
        if (classLoader != null) {
            return classLoader;
        }
        LoadedApk loadedApk = this.mPackageInfo;
        return loadedApk != null ? loadedApk.getClassLoader() : ClassLoader.getSystemClassLoader();
    }

    @Override // android.content.Context
    public File getCodeCacheDir() {
        File fileEnsurePrivateCacheDirExists;
        synchronized (this.mSync) {
            if (this.mCodeCacheDir == null) {
                this.mCodeCacheDir = new File(getDataDir(), "code_cache");
            }
            fileEnsurePrivateCacheDirExists = ensurePrivateCacheDirExists(this.mCodeCacheDir, XATTR_INODE_CODE_CACHE);
        }
        return fileEnsurePrivateCacheDirExists;
    }

    @Override // android.content.Context
    public ContentResolver getContentResolver() {
        return this.mContentResolver;
    }

    @Override // android.content.Context
    public File getDataDir() {
        File deviceProtectedDataDirFile;
        if (this.mPackageInfo == null) {
            throw new RuntimeException("No package details found for package " + getPackageName());
        }
        if (isCredentialProtectedStorage()) {
            deviceProtectedDataDirFile = this.mPackageInfo.getCredentialProtectedDataDirFile();
        } else {
            deviceProtectedDataDirFile = isDeviceProtectedStorage() ? this.mPackageInfo.getDeviceProtectedDataDirFile() : this.mPackageInfo.getDataDirFile();
        }
        if (deviceProtectedDataDirFile == null) {
            throw new RuntimeException("No data directory found for package " + getPackageName());
        }
        if (!deviceProtectedDataDirFile.exists() && Process.myUid() == 1000) {
            Log.wtf(TAG, "Data directory doesn't exist for package " + getPackageName(), new Throwable());
        }
        return deviceProtectedDataDirFile;
    }

    @Override // android.content.Context
    public File getDatabasePath(String str) {
        char cCharAt = str.charAt(0);
        char c = File.separatorChar;
        if (cCharAt != c) {
            return makeFilename(getDatabasesDir(), str);
        }
        File file = new File(str.substring(0, str.lastIndexOf(c)));
        File file2 = new File(file, str.substring(str.lastIndexOf(File.separatorChar)));
        if (file.isDirectory() || !file.mkdir()) {
            return file2;
        }
        FileUtils.setPermissions(file.getPath(), 505, -1, -1);
        return file2;
    }

    @Override // android.content.Context
    public File getDir(String str, int i2) {
        checkMode(i2);
        File fileMakeFilename = makeFilename(getDataDir(), android.accessibilityservice.c.j("app_", str));
        if (!fileMakeFilename.exists()) {
            fileMakeFilename.mkdir();
            setFilePermissionsFromMode(fileMakeFilename.getPath(), i2, 505);
        }
        return fileMakeFilename;
    }

    @Override // android.content.Context
    public Display getDisplay() {
        Display display = this.mDisplay;
        return display == null ? this.mResourcesManager.getAdjustedDisplay(0, this.mResources) : display;
    }

    @Override // android.content.Context
    public DisplayAdjustments getDisplayAdjustments(int i2) {
        return this.mResources.getDisplayAdjustments();
    }

    @Override // android.content.Context
    public File getExternalCacheDir() {
        File[] externalCacheDirs = getExternalCacheDirs();
        if (externalCacheDirs == null || externalCacheDirs.length <= 0) {
            return null;
        }
        return externalCacheDirs[0];
    }

    @Override // android.content.Context
    public File[] getExternalCacheDirs() {
        File[] fileArrEnsureExternalDirsExistOrFilter;
        synchronized (this.mSync) {
            fileArrEnsureExternalDirsExistOrFilter = ensureExternalDirsExistOrFilter(Environment.buildExternalStorageAppCacheDirs(getPackageName()));
        }
        return fileArrEnsureExternalDirsExistOrFilter;
    }

    @Override // android.content.Context
    public File getExternalFilesDir(String str) {
        File[] externalFilesDirs = getExternalFilesDirs(str);
        if (externalFilesDirs == null || externalFilesDirs.length <= 0) {
            return null;
        }
        return externalFilesDirs[0];
    }

    @Override // android.content.Context
    public File[] getExternalFilesDirs(String str) {
        File[] fileArrEnsureExternalDirsExistOrFilter;
        synchronized (this.mSync) {
            File[] fileArrBuildExternalStorageAppFilesDirs = Environment.buildExternalStorageAppFilesDirs(getPackageName());
            if (str != null) {
                fileArrBuildExternalStorageAppFilesDirs = Environment.buildPaths(fileArrBuildExternalStorageAppFilesDirs, str);
            }
            fileArrEnsureExternalDirsExistOrFilter = ensureExternalDirsExistOrFilter(fileArrBuildExternalStorageAppFilesDirs);
        }
        return fileArrEnsureExternalDirsExistOrFilter;
    }

    @Override // android.content.Context
    public File[] getExternalMediaDirs() {
        File[] fileArrEnsureExternalDirsExistOrFilter;
        synchronized (this.mSync) {
            fileArrEnsureExternalDirsExistOrFilter = ensureExternalDirsExistOrFilter(Environment.buildExternalStorageAppMediaDirs(getPackageName()));
        }
        return fileArrEnsureExternalDirsExistOrFilter;
    }

    @Override // android.content.Context
    public File getFileStreamPath(String str) {
        return makeFilename(getFilesDir(), str);
    }

    @Override // android.content.Context
    public File getFilesDir() {
        File fileEnsurePrivateDirExists;
        synchronized (this.mSync) {
            if (this.mFilesDir == null) {
                this.mFilesDir = new File(getDataDir(), "files");
            }
            fileEnsurePrivateDirExists = ensurePrivateDirExists(this.mFilesDir);
        }
        return fileEnsurePrivateDirExists;
    }

    @Override // android.content.Context
    public IApplicationThread getIApplicationThread() {
        return this.mMainThread.getApplicationThread();
    }

    @Override // android.content.Context
    public Looper getMainLooper() {
        return this.mMainThread.getLooper();
    }

    @Override // android.content.Context
    public Handler getMainThreadHandler() {
        return this.mMainThread.getHandler();
    }

    @Override // android.content.Context
    public File getNoBackupFilesDir() {
        File fileEnsurePrivateDirExists;
        synchronized (this.mSync) {
            if (this.mNoBackupFilesDir == null) {
                this.mNoBackupFilesDir = new File(getDataDir(), "no_backup");
            }
            fileEnsurePrivateDirExists = ensurePrivateDirExists(this.mNoBackupFilesDir);
        }
        return fileEnsurePrivateDirExists;
    }

    @Override // android.content.Context
    public File getObbDir() {
        File[] obbDirs = getObbDirs();
        if (obbDirs == null || obbDirs.length <= 0) {
            return null;
        }
        return obbDirs[0];
    }

    @Override // android.content.Context
    public File[] getObbDirs() {
        File[] fileArrEnsureExternalDirsExistOrFilter;
        synchronized (this.mSync) {
            fileArrEnsureExternalDirsExistOrFilter = ensureExternalDirsExistOrFilter(Environment.buildExternalStorageAppObbDirs(getPackageName()));
        }
        return fileArrEnsureExternalDirsExistOrFilter;
    }

    @Override // android.content.Context
    public String getOpPackageName() {
        String str = this.mOpPackageName;
        return str != null ? str : getBasePackageName();
    }

    public final Context getOuterContext() {
        return this.mOuterContext;
    }

    @Override // android.content.Context
    public String getPackageCodePath() {
        LoadedApk loadedApk = this.mPackageInfo;
        if (loadedApk != null) {
            return loadedApk.getAppDir();
        }
        throw new RuntimeException("Not supported in system context");
    }

    @Override // android.content.Context
    public PackageManager getPackageManager() {
        PackageManager packageManager = this.mPackageManager;
        if (packageManager != null) {
            return packageManager;
        }
        IPackageManager packageManager2 = ActivityThread.getPackageManager();
        if (packageManager2 == null) {
            return null;
        }
        ApplicationPackageManager applicationPackageManager = new ApplicationPackageManager(this, packageManager2);
        this.mPackageManager = applicationPackageManager;
        return applicationPackageManager;
    }

    @Override // android.content.Context
    public String getPackageName() {
        LoadedApk loadedApk = this.mPackageInfo;
        return loadedApk != null ? loadedApk.getPackageName() : ZenModeConfig.SYSTEM_AUTHORITY;
    }

    @Override // android.content.Context
    public String getPackageResourcePath() {
        LoadedApk loadedApk = this.mPackageInfo;
        if (loadedApk != null) {
            return loadedApk.getResDir();
        }
        throw new RuntimeException("Not supported in system context");
    }

    @Override // android.content.Context
    public File getPreloadsFileCache() {
        return Environment.getDataPreloadsFileCacheDirectory(getPackageName());
    }

    public final Context getReceiverRestrictedContext() {
        Context context = this.mReceiverRestrictedContext;
        if (context != null) {
            return context;
        }
        ReceiverRestrictedContext receiverRestrictedContext = new ReceiverRestrictedContext(getOuterContext());
        this.mReceiverRestrictedContext = receiverRestrictedContext;
        return receiverRestrictedContext;
    }

    @Override // android.content.Context
    public Resources getResources() {
        return this.mResources;
    }

    @Override // android.content.Context
    public IServiceConnection getServiceDispatcher(ServiceConnection serviceConnection, Handler handler, int i2) {
        return this.mPackageInfo.getServiceDispatcher(serviceConnection, getOuterContext(), handler, i2);
    }

    @Override // android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i2) {
        File sharedPreferencesPath;
        if (this.mPackageInfo.getApplicationInfo().targetSdkVersion < 19 && str == null) {
            str = "null";
        }
        synchronized (ContextImpl.class) {
            if (this.mSharedPrefsPaths == null) {
                this.mSharedPrefsPaths = new ArrayMap<>();
            }
            sharedPreferencesPath = this.mSharedPrefsPaths.get(str);
            if (sharedPreferencesPath == null) {
                sharedPreferencesPath = getSharedPreferencesPath(str);
                this.mSharedPrefsPaths.put(str, sharedPreferencesPath);
            }
        }
        return getSharedPreferences(sharedPreferencesPath, i2);
    }

    @Override // android.content.Context
    public File getSharedPreferencesPath(String str) {
        return makeFilename(getPreferencesDir(), android.accessibilityservice.c.D(str, ".xml"));
    }

    @Override // android.content.Context
    public Object getSystemService(String str) {
        return SystemServiceRegistry.getSystemService(this, str);
    }

    @Override // android.content.Context
    public String getSystemServiceName(Class<?> cls) {
        return SystemServiceRegistry.getSystemServiceName(cls);
    }

    @Override // android.content.Context
    public Resources.Theme getTheme() {
        synchronized (this.mSync) {
            Resources.Theme theme = this.mTheme;
            if (theme != null) {
                return theme;
            }
            this.mThemeResource = Resources.selectDefaultTheme(this.mThemeResource, getOuterContext().getApplicationInfo().targetSdkVersion);
            initializeTheme();
            return this.mTheme;
        }
    }

    @Override // android.content.Context
    public int getThemeResId() {
        int i2;
        synchronized (this.mSync) {
            i2 = this.mThemeResource;
        }
        return i2;
    }

    @Override // android.content.Context
    public int getUserId() {
        return this.mUser.getIdentifier();
    }

    @Override // android.content.Context
    @Deprecated
    public Drawable getWallpaper() {
        return getWallpaperManager().getDrawable();
    }

    @Override // android.content.Context
    @Deprecated
    public int getWallpaperDesiredMinimumHeight() {
        return getWallpaperManager().getDesiredMinimumHeight();
    }

    @Override // android.content.Context
    @Deprecated
    public int getWallpaperDesiredMinimumWidth() {
        return getWallpaperManager().getDesiredMinimumWidth();
    }

    @Override // android.content.Context
    public void grantUriPermission(String str, Uri uri, int i2) {
        try {
            ActivityManager.getService().grantUriPermission(this.mMainThread.getApplicationThread(), str, ContentProvider.getUriWithoutUserId(uri), i2, resolveUserId(uri));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void installSystemApplicationInfo(ApplicationInfo applicationInfo, ClassLoader classLoader) {
        this.mPackageInfo.installSystemApplicationInfo(applicationInfo, classLoader);
    }

    @Override // android.content.Context
    public boolean isCredentialProtectedStorage() {
        return (this.mFlags & 16) != 0;
    }

    @Override // android.content.Context
    public boolean isDeviceProtectedStorage() {
        return (this.mFlags & 8) != 0;
    }

    @Override // android.content.Context
    public boolean isRestricted() {
        return (this.mFlags & 4) != 0;
    }

    @Override // android.content.Context
    public boolean moveDatabaseFrom(Context context, String str) {
        boolean z2;
        synchronized (ContextImpl.class) {
            File databasePath = context.getDatabasePath(str);
            z2 = moveFiles(databasePath.getParentFile(), getDatabasePath(str).getParentFile(), databasePath.getName()) != -1;
        }
        return z2;
    }

    @Override // android.content.Context
    public boolean moveSharedPreferencesFrom(Context context, String str) {
        boolean z2;
        synchronized (ContextImpl.class) {
            File sharedPreferencesPath = context.getSharedPreferencesPath(str);
            File sharedPreferencesPath2 = getSharedPreferencesPath(str);
            int iMoveFiles = moveFiles(sharedPreferencesPath.getParentFile(), sharedPreferencesPath2.getParentFile(), sharedPreferencesPath.getName());
            if (iMoveFiles > 0) {
                ArrayMap<File, SharedPreferencesImpl> sharedPreferencesCacheLocked = getSharedPreferencesCacheLocked();
                sharedPreferencesCacheLocked.remove(sharedPreferencesPath);
                sharedPreferencesCacheLocked.remove(sharedPreferencesPath2);
            }
            z2 = iMoveFiles != -1;
        }
        return z2;
    }

    @Override // android.content.Context
    public FileInputStream openFileInput(String str) {
        return new FileInputStream(makeFilename(getFilesDir(), str));
    }

    @Override // android.content.Context
    public FileOutputStream openFileOutput(String str, int i2) {
        checkMode(i2);
        boolean z2 = (32768 & i2) != 0;
        File fileMakeFilename = makeFilename(getFilesDir(), str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileMakeFilename, z2);
            setFilePermissionsFromMode(fileMakeFilename.getPath(), i2, 0);
            return fileOutputStream;
        } catch (FileNotFoundException unused) {
            File parentFile = fileMakeFilename.getParentFile();
            parentFile.mkdir();
            FileUtils.setPermissions(parentFile.getPath(), 505, -1, -1);
            FileOutputStream fileOutputStream2 = new FileOutputStream(fileMakeFilename, z2);
            setFilePermissionsFromMode(fileMakeFilename.getPath(), i2, 0);
            return fileOutputStream2;
        }
    }

    @Override // android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory) {
        return openOrCreateDatabase(str, i2, cursorFactory, null);
    }

    @Override // android.content.Context
    @Deprecated
    public Drawable peekWallpaper() {
        return getWallpaperManager().peekDrawable();
    }

    public final void performFinalCleanup(String str, String str2) {
        this.mPackageInfo.removeContextRegistrations(getOuterContext(), str, str2);
    }

    @Override // android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return registerReceiver(broadcastReceiver, intentFilter, null, null);
    }

    @Override // android.content.Context
    public Intent registerReceiverAsUser(BroadcastReceiver broadcastReceiver, UserHandle userHandle, IntentFilter intentFilter, String str, Handler handler) {
        return registerReceiverInternal(broadcastReceiver, userHandle.getIdentifier(), intentFilter, str, handler, getOuterContext(), 0);
    }

    @Override // android.content.Context
    public void reloadSharedPreferences() {
        int i2;
        ArrayList arrayList = new ArrayList();
        synchronized (ContextImpl.class) {
            ArrayMap<File, SharedPreferencesImpl> sharedPreferencesCacheLocked = getSharedPreferencesCacheLocked();
            for (int i3 = 0; i3 < sharedPreferencesCacheLocked.size(); i3++) {
                SharedPreferencesImpl sharedPreferencesImplValueAt = sharedPreferencesCacheLocked.valueAt(i3);
                if (sharedPreferencesImplValueAt != null) {
                    arrayList.add(sharedPreferencesImplValueAt);
                }
            }
        }
        for (i2 = 0; i2 < arrayList.size(); i2++) {
            ((SharedPreferencesImpl) arrayList.get(i2)).startReloadIfChangedUnexpectedly();
        }
    }

    @Override // android.content.Context
    @Deprecated
    public void removeStickyBroadcast(Intent intent) {
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        if (strResolveTypeIfNeeded != null) {
            Intent intent2 = new Intent(intent);
            intent2.setDataAndType(intent2.getData(), strResolveTypeIfNeeded);
            intent = intent2;
        }
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().unbroadcastIntent(this.mMainThread.getApplicationThread(), intent, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    @Deprecated
    public void removeStickyBroadcastAsUser(Intent intent, UserHandle userHandle) {
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        if (strResolveTypeIfNeeded != null) {
            Intent intent2 = new Intent(intent);
            intent2.setDataAndType(intent2.getData(), strResolveTypeIfNeeded);
            intent = intent2;
        }
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().unbroadcastIntent(this.mMainThread.getApplicationThread(), intent, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void revokeUriPermission(Uri uri, int i2) {
        try {
            ActivityManager.getService().revokeUriPermission(this.mMainThread.getApplicationThread(), null, ContentProvider.getUriWithoutUserId(uri), i2, resolveUserId(uri));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public final void scheduleFinalCleanup(String str, String str2) {
        this.mMainThread.scheduleContextCleanup(this, str, str2);
    }

    @Override // android.content.Context
    public void sendBroadcast(Intent intent) {
        warnIfCallingFromSystemProcess();
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, null, -1, null, false, false, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle) {
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, null, -1, null, false, false, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendBroadcastMultiplePermissions(Intent intent, String[] strArr) {
        warnIfCallingFromSystemProcess();
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, strArr, -1, null, false, false, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str) {
        warnIfCallingFromSystemProcess();
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        String[] strArr = str == null ? null : new String[]{str};
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, strArr, -1, null, true, false, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, String str, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str2, Bundle bundle) {
        sendOrderedBroadcastAsUser(intent, userHandle, str, -1, null, broadcastReceiver, handler, i2, str2, bundle);
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyBroadcast(Intent intent) {
        warnIfCallingFromSystemProcess();
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, null, -1, null, false, true, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyBroadcastAsUser(Intent intent, UserHandle userHandle) {
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, null, -1, null, false, true, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyOrderedBroadcast(Intent intent, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str, Bundle bundle) {
        IIntentReceiver iIntentReceiver;
        warnIfCallingFromSystemProcess();
        if (broadcastReceiver == null) {
            iIntentReceiver = null;
        } else if (this.mPackageInfo != null) {
            iIntentReceiver = this.mPackageInfo.getReceiverDispatcher(broadcastReceiver, getOuterContext(), handler == null ? this.mMainThread.getHandler() : handler, this.mMainThread.getInstrumentation(), false);
        } else {
            iIntentReceiver = new LoadedApk.ReceiverDispatcher(broadcastReceiver, getOuterContext(), handler == null ? this.mMainThread.getHandler() : handler, null, false).getIIntentReceiver();
        }
        IIntentReceiver iIntentReceiver2 = iIntentReceiver;
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, iIntentReceiver2, i2, str, bundle, null, -1, null, true, true, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str, Bundle bundle) {
        IIntentReceiver iIntentReceiver;
        if (broadcastReceiver == null) {
            iIntentReceiver = null;
        } else if (this.mPackageInfo != null) {
            iIntentReceiver = this.mPackageInfo.getReceiverDispatcher(broadcastReceiver, getOuterContext(), handler == null ? this.mMainThread.getHandler() : handler, this.mMainThread.getInstrumentation(), false);
        } else {
            iIntentReceiver = new LoadedApk.ReceiverDispatcher(broadcastReceiver, getOuterContext(), handler == null ? this.mMainThread.getHandler() : handler, null, false).getIIntentReceiver();
        }
        IIntentReceiver iIntentReceiver2 = iIntentReceiver;
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, iIntentReceiver2, i2, str, bundle, null, -1, null, true, true, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void setAutofillClient(AutofillManager.AutofillClient autofillClient) {
        this.mAutofillClient = autofillClient;
    }

    public final void setOuterContext(Context context) {
        this.mOuterContext = context;
    }

    public void setResources(Resources resources) {
        if (resources instanceof CompatResources) {
            ((CompatResources) resources).setContext(this);
        }
        this.mResources = resources;
    }

    @Override // android.content.Context
    public void setTheme(int i2) {
        synchronized (this.mSync) {
            if (this.mThemeResource != i2) {
                this.mThemeResource = i2;
                initializeTheme();
            }
        }
    }

    @Override // android.content.Context
    @Deprecated
    public void setWallpaper(Bitmap bitmap) {
        getWallpaperManager().setBitmap(bitmap);
    }

    @Override // android.content.Context
    public void startActivities(Intent[] intentArr) {
        warnIfCallingFromSystemProcess();
        startActivities(intentArr, null);
    }

    @Override // android.content.Context
    public void startActivitiesAsUser(Intent[] intentArr, Bundle bundle, UserHandle userHandle) {
        if ((intentArr[0].getFlags() & 268435456) == 0) {
            throw new AndroidRuntimeException("Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?");
        }
        this.mMainThread.getInstrumentation().execStartActivitiesAsUser(getOuterContext(), this.mMainThread.getApplicationThread(), null, null, intentArr, bundle, userHandle.getIdentifier());
    }

    @Override // android.content.Context
    public void startActivity(Intent intent) {
        warnIfCallingFromSystemProcess();
        startActivity(intent, null);
    }

    @Override // android.content.Context
    public void startActivityAsUser(Intent intent, UserHandle userHandle) {
        startActivityAsUser(intent, null, userHandle);
    }

    @Override // android.content.Context
    public ComponentName startForegroundService(Intent intent) {
        warnIfCallingFromSystemProcess();
        return startServiceCommon(intent, true, this.mUser);
    }

    @Override // android.content.Context
    public ComponentName startForegroundServiceAsUser(Intent intent, UserHandle userHandle) {
        return startServiceCommon(intent, true, userHandle);
    }

    @Override // android.content.Context
    public boolean startInstrumentation(ComponentName componentName, String str, Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.setAllowFds(false);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        return ActivityManager.getService().startInstrumentation(componentName, str, 0, bundle, null, null, getUserId(), null);
    }

    @Override // android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        startIntentSender(intentSender, intent, i2, i3, i4, null);
    }

    @Override // android.content.Context
    public ComponentName startService(Intent intent) {
        warnIfCallingFromSystemProcess();
        return startServiceCommon(intent, false, this.mUser);
    }

    @Override // android.content.Context
    public ComponentName startServiceAsUser(Intent intent, UserHandle userHandle) {
        return startServiceCommon(intent, false, userHandle);
    }

    @Override // android.content.Context
    public boolean stopService(Intent intent) {
        warnIfCallingFromSystemProcess();
        return stopServiceCommon(intent, this.mUser);
    }

    @Override // android.content.Context
    public boolean stopServiceAsUser(Intent intent, UserHandle userHandle) {
        return stopServiceCommon(intent, userHandle);
    }

    @Override // android.content.Context
    public void unbindService(ServiceConnection serviceConnection) {
        if (serviceConnection == null) {
            throw new IllegalArgumentException("connection is null");
        }
        LoadedApk loadedApk = this.mPackageInfo;
        if (loadedApk == null) {
            throw new RuntimeException("Not supported in system context");
        }
        try {
            ActivityManager.getService().unbindService(loadedApk.forgetServiceDispatcher(getOuterContext(), serviceConnection));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        LoadedApk loadedApk = this.mPackageInfo;
        if (loadedApk == null) {
            throw new RuntimeException("Not supported in system context");
        }
        try {
            ActivityManager.getService().unregisterReceiver(loadedApk.forgetReceiverDispatcher(getOuterContext(), broadcastReceiver));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void updateDisplay(int i2) {
        this.mDisplay = this.mResourcesManager.getAdjustedDisplay(i2, this.mResources);
    }

    private static File ensurePrivateDirExists(File file, int i2, int i3, String str) {
        if (!file.exists()) {
            String absolutePath = file.getAbsolutePath();
            try {
                Os.mkdir(absolutePath, i2);
                Os.chmod(absolutePath, i2);
                if (i3 != -1) {
                    Os.chown(absolutePath, -1, i3);
                }
            } catch (ErrnoException e2) {
                if (e2.errno != OsConstants.EEXIST) {
                    Log.w(TAG, "Failed to ensure " + file + ": " + e2.getMessage());
                }
            }
            if (str != null) {
                try {
                    byte[] bArr = new byte[8];
                    Memory.pokeLong(bArr, 0, Os.stat(file.getAbsolutePath()).st_ino, ByteOrder.nativeOrder());
                    Os.setxattr(file.getParentFile().getAbsolutePath(), str, bArr, 0);
                } catch (ErrnoException e3) {
                    StringBuilder sbV = android.accessibilityservice.c.v("Failed to update ", str, ": ");
                    sbV.append(e3.getMessage());
                    Log.w(TAG, sbV.toString());
                }
            }
        }
        return file;
    }

    @Override // android.content.Context
    public boolean bindServiceAsUser(Intent intent, ServiceConnection serviceConnection, int i2, Handler handler, UserHandle userHandle) {
        if (handler != null) {
            return bindServiceCommon(intent, serviceConnection, i2, handler, userHandle);
        }
        throw new IllegalArgumentException("handler must not be null.");
    }

    @Override // android.content.Context
    public SQLiteDatabase openOrCreateDatabase(String str, int i2, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        checkMode(i2);
        File databasePath = getDatabasePath(str);
        int i3 = (i2 & 8) != 0 ? 805306368 : 268435456;
        if ((i2 & 16) != 0) {
            i3 |= 16;
        }
        SQLiteDatabase sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(databasePath.getPath(), cursorFactory, i3, databaseErrorHandler);
        setFilePermissionsFromMode(databasePath.getPath(), i2, 0);
        return sQLiteDatabaseOpenDatabase;
    }

    @Override // android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i2) {
        return registerReceiver(broadcastReceiver, intentFilter, null, null, i2);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, String str, int i2, BroadcastReceiver broadcastReceiver, Handler handler, int i3, String str2, Bundle bundle) {
        sendOrderedBroadcastAsUser(intent, userHandle, str, i2, null, broadcastReceiver, handler, i3, str2, bundle);
    }

    @Override // android.content.Context
    @Deprecated
    public void setWallpaper(InputStream inputStream) {
        getWallpaperManager().setStream(inputStream);
    }

    @Override // android.content.Context
    public void startActivityAsUser(Intent intent, Bundle bundle, UserHandle userHandle) {
        try {
            ActivityManager.getService().startActivityAsUser(this.mMainThread.getApplicationThread(), getBasePackageName(), intent, intent.resolveTypeIfNeeded(getContentResolver()), null, null, 0, 268435456, null, bundle, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        String strResolveTypeIfNeeded;
        if (intent != null) {
            try {
                intent.migrateExtraStreamToClipData();
                intent.prepareToLeaveProcess(this);
                strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        } else {
            strResolveTypeIfNeeded = null;
        }
        int iStartActivityIntentSender = ActivityManager.getService().startActivityIntentSender(this.mMainThread.getApplicationThread(), intentSender != null ? intentSender.getTarget() : null, intentSender != null ? intentSender.getWhitelistToken() : null, intent, strResolveTypeIfNeeded, null, null, 0, i2, i3, bundle);
        if (iStartActivityIntentSender == -96) {
            throw new IntentSender.SendIntentException();
        }
        Instrumentation.checkStartActivityResult(iStartActivityIntentSender, null);
    }

    @Override // android.content.Context
    public void enforceUriPermission(Uri uri, String str, String str2, int i2, int i3, int i4, String str3) {
        enforceForUri(i4, checkUriPermission(uri, str, str2, i2, i3, i4), false, i3, uri, str3);
    }

    @Override // android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return registerReceiverInternal(broadcastReceiver, getUserId(), intentFilter, str, handler, getOuterContext(), 0);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcastAsUser(Intent intent, UserHandle userHandle, String str, int i2, Bundle bundle, BroadcastReceiver broadcastReceiver, Handler handler, int i3, String str2, Bundle bundle2) {
        IIntentReceiver iIntentReceiver;
        IIntentReceiver iIntentReceiver2;
        if (broadcastReceiver != null) {
            if (this.mPackageInfo != null) {
                iIntentReceiver2 = this.mPackageInfo.getReceiverDispatcher(broadcastReceiver, getOuterContext(), handler == null ? this.mMainThread.getHandler() : handler, this.mMainThread.getInstrumentation(), false);
            } else {
                iIntentReceiver2 = new LoadedApk.ReceiverDispatcher(broadcastReceiver, getOuterContext(), handler == null ? this.mMainThread.getHandler() : handler, null, false).getIIntentReceiver();
            }
            iIntentReceiver = iIntentReceiver2;
        } else {
            iIntentReceiver = null;
        }
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        String[] strArr = str != null ? new String[]{str} : null;
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, iIntentReceiver, i3, str2, bundle2, strArr, i2, bundle, true, false, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void startActivities(Intent[] intentArr, Bundle bundle) {
        warnIfCallingFromSystemProcess();
        if ((intentArr[0].getFlags() & 268435456) != 0) {
            this.mMainThread.getInstrumentation().execStartActivities(getOuterContext(), this.mMainThread.getApplicationThread(), null, null, intentArr, bundle);
            return;
        }
        throw new AndroidRuntimeException("Calling startActivities() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag on first Intent. Is this really what you want?");
    }

    @Override // android.content.Context
    public void startActivity(Intent intent, Bundle bundle) {
        warnIfCallingFromSystemProcess();
        if ((intent.getFlags() & 268435456) == 0 && bundle != null && ActivityOptions.fromBundle(bundle).getLaunchTaskId() == -1) {
            throw new AndroidRuntimeException("Calling startActivity() from outside of an Activity  context requires the FLAG_ACTIVITY_NEW_TASK flag. Is this really what you want?");
        }
        this.mMainThread.getInstrumentation().execStartActivity(getOuterContext(), this.mMainThread.getApplicationThread(), (IBinder) null, (Activity) null, intent, -1, bundle);
    }

    @Override // android.content.Context
    public int checkUriPermission(Uri uri, int i2, int i3, int i4, IBinder iBinder) {
        try {
            return ActivityManager.getService().checkUriPermission(ContentProvider.getUriWithoutUserId(uri), i2, i3, i4, resolveUserId(uri), iBinder);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i2) {
        return registerReceiverInternal(broadcastReceiver, getUserId(), intentFilter, str, handler, getOuterContext(), i2);
    }

    @Override // android.content.Context
    public void revokeUriPermission(String str, Uri uri, int i2) {
        try {
            ActivityManager.getService().revokeUriPermission(this.mMainThread.getApplicationThread(), str, ContentProvider.getUriWithoutUserId(uri), i2, resolveUserId(uri));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public int checkPermission(String str, int i2, int i3, IBinder iBinder) {
        if (str != null) {
            try {
                return ActivityManager.getService().checkPermissionWithToken(str, i2, i3, iBinder);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        throw new IllegalArgumentException("permission is null");
    }

    @Override // android.content.Context
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle, String str) {
        sendBroadcastAsUser(intent, userHandle, str, -1);
    }

    @Override // android.content.Context
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle, String str, Bundle bundle) {
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        String[] strArr = str == null ? null : new String[]{str};
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, strArr, -1, bundle, false, false, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    @Deprecated
    public void sendStickyBroadcastAsUser(Intent intent, UserHandle userHandle, Bundle bundle) {
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, null, -1, bundle, false, true, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendBroadcast(Intent intent, String str) {
        warnIfCallingFromSystemProcess();
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        String[] strArr = str == null ? null : new String[]{str};
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, strArr, -1, null, false, false, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str2, Bundle bundle) {
        sendOrderedBroadcast(intent, str, -1, broadcastReceiver, handler, i2, str2, bundle, null);
    }

    @Override // android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str, Bundle bundle, BroadcastReceiver broadcastReceiver, Handler handler, int i2, String str2, Bundle bundle2) {
        sendOrderedBroadcast(intent, str, -1, broadcastReceiver, handler, i2, str2, bundle2, bundle);
    }

    @Override // android.content.Context
    public int checkUriPermission(Uri uri, String str, String str2, int i2, int i3, int i4) {
        if ((i4 & 1) != 0 && (str == null || checkPermission(str, i2, i3) == 0)) {
            return 0;
        }
        if ((i4 & 2) != 0 && (str2 == null || checkPermission(str2, i2, i3) == 0)) {
            return 0;
        }
        if (uri != null) {
            return checkUriPermission(uri, i2, i3, i4);
        }
        return -1;
    }

    @Override // android.content.Context
    public SharedPreferences getSharedPreferences(File file, int i2) {
        synchronized (ContextImpl.class) {
            ArrayMap<File, SharedPreferencesImpl> sharedPreferencesCacheLocked = getSharedPreferencesCacheLocked();
            SharedPreferencesImpl sharedPreferencesImpl = sharedPreferencesCacheLocked.get(file);
            if (sharedPreferencesImpl == null) {
                checkMode(i2);
                if (getApplicationInfo().targetSdkVersion >= 26 && isCredentialProtectedStorage() && !((UserManager) getSystemService(UserManager.class)).isUserUnlockingOrUnlocked(UserHandle.myUserId())) {
                    throw new IllegalStateException("SharedPreferences in credential encrypted storage are not available until after user is unlocked");
                }
                SharedPreferencesImpl sharedPreferencesImpl2 = new SharedPreferencesImpl(file, i2);
                sharedPreferencesCacheLocked.put(file, sharedPreferencesImpl2);
                return sharedPreferencesImpl2;
            }
            if ((i2 & 4) != 0 || getApplicationInfo().targetSdkVersion < 11) {
                sharedPreferencesImpl.startReloadIfChangedUnexpectedly();
            }
            return sharedPreferencesImpl;
        }
    }

    @Override // android.content.Context
    public void sendOrderedBroadcast(Intent intent, String str, int i2, BroadcastReceiver broadcastReceiver, Handler handler, int i3, String str2, Bundle bundle) {
        sendOrderedBroadcast(intent, str, i2, broadcastReceiver, handler, i3, str2, bundle, null);
    }

    public void sendOrderedBroadcast(Intent intent, String str, int i2, BroadcastReceiver broadcastReceiver, Handler handler, int i3, String str2, Bundle bundle, Bundle bundle2) {
        IIntentReceiver iIntentReceiver;
        IIntentReceiver iIntentReceiver2;
        warnIfCallingFromSystemProcess();
        if (broadcastReceiver != null) {
            if (this.mPackageInfo != null) {
                iIntentReceiver2 = this.mPackageInfo.getReceiverDispatcher(broadcastReceiver, getOuterContext(), handler == null ? this.mMainThread.getHandler() : handler, this.mMainThread.getInstrumentation(), false);
            } else {
                iIntentReceiver2 = new LoadedApk.ReceiverDispatcher(broadcastReceiver, getOuterContext(), handler == null ? this.mMainThread.getHandler() : handler, null, false).getIIntentReceiver();
            }
            iIntentReceiver = iIntentReceiver2;
        } else {
            iIntentReceiver = null;
        }
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        String[] strArr = str != null ? new String[]{str} : null;
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, iIntentReceiver, i3, str2, bundle, strArr, i2, bundle2, true, false, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendBroadcastAsUser(Intent intent, UserHandle userHandle, String str, int i2) {
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        String[] strArr = str == null ? null : new String[]{str};
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, strArr, i2, null, false, false, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendBroadcast(Intent intent, String str, Bundle bundle) {
        warnIfCallingFromSystemProcess();
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        String[] strArr = str == null ? null : new String[]{str};
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, strArr, -1, bundle, false, false, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.Context
    public void sendBroadcast(Intent intent, String str, int i2) {
        warnIfCallingFromSystemProcess();
        String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
        String[] strArr = str == null ? null : new String[]{str};
        try {
            intent.prepareToLeaveProcess(this);
            ActivityManager.getService().broadcastIntent(this.mMainThread.getApplicationThread(), intent, strResolveTypeIfNeeded, null, -1, null, null, strArr, i2, null, false, false, getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
