package android.app;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.AppCloneUserInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ChangedPackages;
import android.content.pm.ComponentInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.IDexModuleRegisterCallback;
import android.content.pm.IOnPermissionsChangeListener;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageDeleteObserver;
import android.content.pm.IPackageInstallObserver;
import android.content.pm.IPackageManager;
import android.content.pm.IPackageMoveObserver;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.InstantAppInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.IntentFilterVerificationInfo;
import android.content.pm.KeySet;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.UserInfo;
import android.content.pm.VerifierDeviceIdentity;
import android.content.pm.VersionedPackage;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.EnvironmentEx;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.os.storage.VolumeInfo;
import android.provider.Settings;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.ArrayMap;
import android.util.IconDrawableFactory;
import android.util.LauncherIcons;
import android.util.Log;
import com.android.internal.R;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.Preconditions;
import com.android.internal.util.UserIcons;
import dalvik.system.VMRuntime;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationPackageManager extends PackageManagerEx {
    private static final boolean DEBUG_ICONS = false;
    private static final int DEFAULT_EPHEMERAL_COOKIE_MAX_SIZE_BYTES = 16384;
    private static final String TAG = "ApplicationPackageManager";
    private static final int sDefaultFlags = 1024;
    volatile int mCachedSafeMode;
    private final ContextImpl mContext;

    @GuardedBy("mDelegates")
    private final ArrayList<MoveCallbackDelegate> mDelegates;

    @GuardedBy("mLock")
    private PackageInstaller mInstaller;
    private final Object mLock;
    private final IPackageManager mPM;
    private final Map<PackageManager.OnPermissionsChangedListener, IOnPermissionsChangeListener> mPermissionListeners;

    @GuardedBy("mLock")
    private String mPermissionsControllerPackageName;

    @GuardedBy("mLock")
    private UserManager mUserManager;
    public static final int[] CORP_BADGE_LABEL_RES_ID = {R.string.managed_profile_label_badge, R.string.managed_profile_label_badge_2, R.string.managed_profile_label_badge_3};
    private static final Object sSync = new Object();
    private static ArrayMap<ResourceName, WeakReference<Drawable.ConstantState>> sIconCache = new ArrayMap<>();
    private static ArrayMap<ResourceName, WeakReference<CharSequence>> sStringCache = new ArrayMap<>();

    public static class DexModuleRegisterCallbackDelegate extends IDexModuleRegisterCallback.Stub implements Handler.Callback {
        private static final int MSG_DEX_MODULE_REGISTERED = 1;
        private final PackageManager.DexModuleRegisterCallback callback;
        private final Handler mHandler = new Handler(Looper.getMainLooper(), this);

        public DexModuleRegisterCallbackDelegate(PackageManager.DexModuleRegisterCallback dexModuleRegisterCallback) {
            this.callback = dexModuleRegisterCallback;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            DexModuleRegisterResult dexModuleRegisterResult = (DexModuleRegisterResult) message.obj;
            this.callback.onDexModuleRegistered(dexModuleRegisterResult.dexModulePath, dexModuleRegisterResult.success, dexModuleRegisterResult.message);
            return true;
        }

        @Override // android.content.pm.IDexModuleRegisterCallback
        public void onDexModuleRegistered(String str, boolean z2, String str2) {
            this.mHandler.obtainMessage(1, new DexModuleRegisterResult(str, z2, str2)).sendToTarget();
        }
    }

    public static class DexModuleRegisterResult {
        final String dexModulePath;
        final String message;
        final boolean success;

        private DexModuleRegisterResult(String str, boolean z2, String str2) {
            this.dexModulePath = str;
            this.success = z2;
            this.message = str2;
        }
    }

    public static class MoveCallbackDelegate extends IPackageMoveObserver.Stub implements Handler.Callback {
        private static final int MSG_CREATED = 1;
        private static final int MSG_STATUS_CHANGED = 2;
        final PackageManager.MoveCallback mCallback;
        final Handler mHandler;

        public MoveCallbackDelegate(PackageManager.MoveCallback moveCallback, Looper looper) {
            this.mCallback = moveCallback;
            this.mHandler = new Handler(looper, this);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                SomeArgs someArgs = (SomeArgs) message.obj;
                this.mCallback.onCreated(someArgs.argi1, (Bundle) someArgs.arg2);
                someArgs.recycle();
                return true;
            }
            if (i2 != 2) {
                return false;
            }
            SomeArgs someArgs2 = (SomeArgs) message.obj;
            this.mCallback.onStatusChanged(someArgs2.argi1, someArgs2.argi2, ((Long) someArgs2.arg3).longValue());
            someArgs2.recycle();
            return true;
        }

        @Override // android.content.pm.IPackageMoveObserver
        public void onCreated(int i2, Bundle bundle) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.argi1 = i2;
            someArgsObtain.arg2 = bundle;
            this.mHandler.obtainMessage(1, someArgsObtain).sendToTarget();
        }

        @Override // android.content.pm.IPackageMoveObserver
        public void onStatusChanged(int i2, int i3, long j2) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.argi1 = i2;
            someArgsObtain.argi2 = i3;
            someArgsObtain.arg3 = Long.valueOf(j2);
            this.mHandler.obtainMessage(2, someArgsObtain).sendToTarget();
        }
    }

    public class OnPermissionsChangeListenerDelegate extends IOnPermissionsChangeListener.Stub implements Handler.Callback {
        private static final int MSG_PERMISSIONS_CHANGED = 1;
        private final Handler mHandler;
        private final PackageManager.OnPermissionsChangedListener mListener;

        public OnPermissionsChangeListenerDelegate(PackageManager.OnPermissionsChangedListener onPermissionsChangedListener, Looper looper) {
            this.mListener = onPermissionsChangedListener;
            this.mHandler = new Handler(looper, this);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            this.mListener.onPermissionsChanged(message.arg1);
            return true;
        }

        @Override // android.content.pm.IOnPermissionsChangeListener
        public void onPermissionsChanged(int i2) {
            this.mHandler.obtainMessage(1, i2, 0).sendToTarget();
        }
    }

    public ApplicationPackageManager(ContextImpl contextImpl, IPackageManager iPackageManager) {
        super(contextImpl, iPackageManager);
        this.mLock = new Object();
        this.mDelegates = new ArrayList<>();
        this.mCachedSafeMode = -1;
        this.mPermissionListeners = new ArrayMap();
        this.mContext = contextImpl;
        this.mPM = iPackageManager;
    }

    public static void configurationChanged() {
        synchronized (sSync) {
            sIconCache.clear();
            sStringCache.clear();
        }
    }

    private Drawable getBadgedDrawable(Drawable drawable, Drawable drawable2, Rect rect, boolean z2) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        boolean z3 = z2 && (drawable instanceof BitmapDrawable) && ((BitmapDrawable) drawable).getBitmap().isMutable();
        Bitmap bitmap = z3 ? ((BitmapDrawable) drawable).getBitmap() : Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        if (!z3) {
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable.draw(canvas);
        }
        if (rect == null) {
            drawable2.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
            drawable2.draw(canvas);
        } else {
            if (rect.left < 0 || rect.top < 0 || rect.width() > intrinsicWidth || rect.height() > intrinsicHeight) {
                throw new IllegalArgumentException("Badge location " + rect + " not in badged drawable bounds " + new Rect(0, 0, intrinsicWidth, intrinsicHeight));
            }
            drawable2.setBounds(0, 0, rect.width(), rect.height());
            canvas.save();
            canvas.translate(rect.left, rect.top);
            drawable2.draw(canvas);
            canvas.restore();
        }
        if (z3) {
            return drawable;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), bitmap);
        if (drawable instanceof BitmapDrawable) {
            bitmapDrawable.setTargetDensity(((BitmapDrawable) drawable).getBitmap().getDensity());
        }
        return bitmapDrawable;
    }

    private Drawable getCachedIcon(ResourceName resourceName) {
        synchronized (sSync) {
            WeakReference<Drawable.ConstantState> weakReference = sIconCache.get(resourceName);
            if (weakReference != null) {
                Drawable.ConstantState constantState = weakReference.get();
                if (constantState != null) {
                    return constantState.newDrawable();
                }
                sIconCache.remove(resourceName);
            }
            return null;
        }
    }

    private CharSequence getCachedString(ResourceName resourceName) {
        synchronized (sSync) {
            WeakReference<CharSequence> weakReference = sStringCache.get(resourceName);
            if (weakReference != null) {
                CharSequence charSequence = weakReference.get();
                if (charSequence != null) {
                    return charSequence;
                }
                sStringCache.remove(resourceName);
            }
            return null;
        }
    }

    private Drawable getDrawableForDensity(int i2, int i3) {
        if (i3 <= 0) {
            i3 = this.mContext.getResources().getDisplayMetrics().densityDpi;
        }
        return Resources.getSystem().getDrawableForDensity(i2, i3);
    }

    private Drawable getManagedProfileIconForDensity(UserHandle userHandle, int i2, int i3) {
        if (isManagedProfile(userHandle.getIdentifier())) {
            return getDrawableForDensity(i2, i3);
        }
        return null;
    }

    private int getUserBadgeColor(UserHandle userHandle) {
        return IconDrawableFactory.getUserBadgeColor(getUserManager(), userHandle.getIdentifier());
    }

    public static void handlePackageBroadcast(int i2, String[] strArr, boolean z2) {
        boolean z3 = i2 == 1;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        boolean z4 = false;
        for (String str : strArr) {
            synchronized (sSync) {
                for (int size = sIconCache.size() - 1; size >= 0; size--) {
                    if (sIconCache.keyAt(size).packageName.equals(str)) {
                        sIconCache.removeAt(size);
                        z4 = true;
                    }
                }
                for (int size2 = sStringCache.size() - 1; size2 >= 0; size2--) {
                    if (sStringCache.keyAt(size2).packageName.equals(str)) {
                        sStringCache.removeAt(size2);
                        z4 = true;
                    }
                }
            }
        }
        if (z4 || z2) {
            if (z3) {
                Runtime.getRuntime().gc();
            } else {
                ActivityThread.currentActivityThread().scheduleGcIdler();
            }
        }
    }

    private void installCommon(Uri uri, PackageInstallObserver packageInstallObserver, int i2, String str, int i3) {
        if (!ContentResolver.SCHEME_FILE.equals(uri.getScheme())) {
            throw new UnsupportedOperationException("Only file:// URIs are supported");
        }
        try {
            this.mPM.installPackageAsUser(uri.getPath(), packageInstallObserver.getBinder(), i2, str, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private boolean isManagedProfile(int i2) {
        return getUserManager().isManagedProfile(i2);
    }

    private boolean isPackageCandidateVolume(ContextImpl contextImpl, ApplicationInfo applicationInfo, VolumeInfo volumeInfo, IPackageManager iPackageManager) {
        int i2;
        boolean zIsForceAllowOnExternal = isForceAllowOnExternal(contextImpl);
        if (VolumeInfo.ID_PRIVATE_INTERNAL.equals(volumeInfo.getId())) {
            return applicationInfo.isSystemApp() || isAllow3rdPartyOnInternal(contextImpl);
        }
        if (applicationInfo.isSystemApp()) {
            return false;
        }
        String str = applicationInfo.sourceDir;
        if (str != null && (str.startsWith("/system/preloadapp") || applicationInfo.sourceDir.startsWith("/system/vital-app") || applicationInfo.sourceDir.startsWith("/oem/vital-app"))) {
            return false;
        }
        if ((!zIsForceAllowOnExternal && ((i2 = applicationInfo.installLocation) == 1 || i2 == -1)) || !volumeInfo.isMountedWritable()) {
            return false;
        }
        if (volumeInfo.type == 0 && Objects.equals(volumeInfo.linkName, "sdcard0")) {
            return applicationInfo.isInternal();
        }
        try {
            return !iPackageManager.isPackageDeviceAdminOnAnyUser(applicationInfo.packageName) && volumeInfo.getType() == 1;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private static boolean isPrimaryStorageCandidateVolume(VolumeInfo volumeInfo) {
        if (VolumeInfo.ID_PRIVATE_INTERNAL.equals(volumeInfo.getId())) {
            return true;
        }
        return volumeInfo.isMountedWritable() && volumeInfo.getType() == 1;
    }

    private static ApplicationInfo maybeAdjustApplicationInfo(ApplicationInfo applicationInfo) {
        if (applicationInfo.primaryCpuAbi != null && applicationInfo.secondaryCpuAbi != null) {
            String strVmInstructionSet = VMRuntime.getRuntime().vmInstructionSet();
            String instructionSet = VMRuntime.getInstructionSet(applicationInfo.secondaryCpuAbi);
            String str = SystemProperties.get("ro.dalvik.vm.isa." + instructionSet);
            if (!str.isEmpty()) {
                instructionSet = str;
            }
            if (strVmInstructionSet.equals(instructionSet)) {
                ApplicationInfo applicationInfo2 = new ApplicationInfo(applicationInfo);
                applicationInfo2.nativeLibraryDir = applicationInfo.secondaryNativeLibraryDir;
                return applicationInfo2;
            }
        }
        return applicationInfo;
    }

    private void putCachedIcon(ResourceName resourceName, Drawable drawable) {
        synchronized (sSync) {
            sIconCache.put(resourceName, new WeakReference<>(drawable.getConstantState()));
        }
    }

    private void putCachedString(ResourceName resourceName, CharSequence charSequence) {
        synchronized (sSync) {
            sStringCache.put(resourceName, new WeakReference<>(charSequence));
        }
    }

    @Override // android.content.pm.PackageManager
    public void addCrossProfileIntentFilter(IntentFilter intentFilter, int i2, int i3, int i4) {
        try {
            this.mPM.addCrossProfileIntentFilter(intentFilter, this.mContext.getOpPackageName(), i2, i3, i4);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void addOnPermissionsChangeListener(PackageManager.OnPermissionsChangedListener onPermissionsChangedListener) {
        synchronized (this.mPermissionListeners) {
            if (this.mPermissionListeners.get(onPermissionsChangedListener) != null) {
                return;
            }
            OnPermissionsChangeListenerDelegate onPermissionsChangeListenerDelegate = new OnPermissionsChangeListenerDelegate(onPermissionsChangedListener, Looper.getMainLooper());
            try {
                this.mPM.addOnPermissionsChangeListener(onPermissionsChangeListenerDelegate);
                this.mPermissionListeners.put(onPermissionsChangedListener, onPermissionsChangeListenerDelegate);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPackageToPreferred(String str) {
        Log.w(TAG, "addPackageToPreferred() is a no-op");
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermission(PermissionInfo permissionInfo) {
        try {
            return this.mPM.addPermission(permissionInfo);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermissionAsync(PermissionInfo permissionInfo) {
        try {
            return this.mPM.addPermissionAsync(permissionInfo);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName) {
        try {
            this.mPM.addPreferredActivity(intentFilter, i2, componentNameArr, componentName, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPreferredActivityAsUser(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName, int i3) {
        try {
            this.mPM.addPreferredActivity(intentFilter, i2, componentNameArr, componentName, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean canRequestPackageInstalls() {
        try {
            return this.mPM.canRequestPackageInstalls(this.mContext.getPackageName(), this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] canonicalToCurrentPackageNames(String[] strArr) {
        try {
            return this.mPM.canonicalToCurrentPackageNames(strArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkPermission(String str, String str2) {
        try {
            return this.mPM.checkPermission(str, str2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(String str, String str2) {
        try {
            return this.mPM.checkSignatures(str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver) {
        try {
            this.mPM.clearApplicationUserData(str, iPackageDataObserver, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void clearCrossProfileIntentFilters(int i2) {
        try {
            this.mPM.clearCrossProfileIntentFilters(i2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void clearInstantAppCookie() {
        updateInstantAppCookie(null);
    }

    @Override // android.content.pm.PackageManager
    public void clearPackagePreferredActivities(String str) {
        try {
            this.mPM.clearPackagePreferredActivities(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] currentToCanonicalPackageNames(String[] strArr) {
        try {
            return this.mPM.currentToCanonicalPackageNames(strArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void deleteApplicationCacheFiles(String str, IPackageDataObserver iPackageDataObserver) {
        try {
            this.mPM.deleteApplicationCacheFiles(str, iPackageDataObserver);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void deleteApplicationCacheFilesAsUser(String str, int i2, IPackageDataObserver iPackageDataObserver) {
        try {
            this.mPM.deleteApplicationCacheFilesAsUser(str, i2, iPackageDataObserver);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void deletePackage(String str, IPackageDeleteObserver iPackageDeleteObserver, int i2) {
        deletePackageAsUser(str, iPackageDeleteObserver, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public void deletePackageAsUser(String str, IPackageDeleteObserver iPackageDeleteObserver, int i2, int i3) {
        try {
            this.mPM.deletePackageAsUser(str, -1, iPackageDeleteObserver, i3, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void extendVerificationTimeout(int i2, int i3, long j2) {
        try {
            this.mPM.extendVerificationTimeout(i2, i3, j2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void flushPackageRestrictionsAsUser(int i2) {
        try {
            this.mPM.flushPackageRestrictionsAsUser(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void freeStorage(String str, long j2, IntentSender intentSender) {
        try {
            this.mPM.freeStorage(str, j2, 0, intentSender);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void freeStorageAndNotify(String str, long j2, IPackageDataObserver iPackageDataObserver) {
        try {
            this.mPM.freeStorageAndNotify(str, j2, 0, iPackageDataObserver);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(ComponentName componentName) {
        return getActivityInfo(componentName, 1024).loadBanner(this);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(ComponentName componentName) {
        return getActivityInfo(componentName, 1024).loadIcon(this);
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getActivityInfo(ComponentName componentName, int i2) throws PackageManager.NameNotFoundException {
        try {
            ActivityInfo activityInfo = this.mPM.getActivityInfo(componentName, i2, this.mContext.getUserId());
            if (activityInfo != null) {
                return activityInfo;
            }
            throw new PackageManager.NameNotFoundException(componentName.toString());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(ComponentName componentName) {
        return getActivityInfo(componentName, 1024).loadLogo(this);
    }

    @Override // android.content.pm.PackageManager
    public List<IntentFilter> getAllIntentFilters(String str) {
        try {
            ParceledListSlice allIntentFilters = this.mPM.getAllIntentFilters(str);
            return allIntentFilters == null ? Collections.emptyList() : allIntentFilters.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionGroupInfo> getAllPermissionGroups(int i2) {
        try {
            ParceledListSlice allPermissionGroups = this.mPM.getAllPermissionGroups(i2);
            return allPermissionGroups == null ? Collections.emptyList() : allPermissionGroups.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(ApplicationInfo applicationInfo) {
        return applicationInfo.loadBanner(this);
    }

    @Override // android.content.pm.PackageManager
    public int getApplicationEnabledSetting(String str) {
        try {
            return this.mPM.getApplicationEnabledSetting(str, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean getApplicationHiddenSettingAsUser(String str, UserHandle userHandle) {
        try {
            return this.mPM.getApplicationHiddenSettingAsUser(str, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(ApplicationInfo applicationInfo) {
        return applicationInfo.loadIcon(this);
    }

    @Override // android.content.pm.PackageManager
    public ApplicationInfo getApplicationInfo(String str, int i2) {
        return getApplicationInfoAsUser(str, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public ApplicationInfo getApplicationInfoAsUser(String str, int i2, int i3) throws PackageManager.NameNotFoundException {
        try {
            ApplicationInfo applicationInfo = this.mPM.getApplicationInfo(str, i2, i3);
            if (applicationInfo != null) {
                return maybeAdjustApplicationInfo(applicationInfo);
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
        return applicationInfo.loadLabel(this);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(ApplicationInfo applicationInfo) {
        return applicationInfo.loadLogo(this);
    }

    @Override // android.content.pm.PackageManager
    public ChangedPackages getChangedPackages(int i2) {
        try {
            return this.mPM.getChangedPackages(i2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int getComponentEnabledSetting(ComponentName componentName) {
        try {
            return this.mPM.getComponentEnabledSetting(componentName, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDefaultActivityIcon() {
        return Resources.getSystem().getDrawable(17301651);
    }

    @Override // android.content.pm.PackageManager
    public String getDefaultBrowserPackageNameAsUser(int i2) {
        try {
            return this.mPM.getDefaultBrowserPackageName(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDrawable(String str, int i2, ApplicationInfo applicationInfo) {
        ResourceName resourceName = new ResourceName(str, i2);
        Drawable cachedIcon = getCachedIcon(resourceName);
        if (cachedIcon != null) {
            return cachedIcon;
        }
        if (applicationInfo == null) {
            try {
                applicationInfo = getApplicationInfo(str, 1024);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        if (i2 != 0) {
            try {
                Drawable drawable = getResourcesForApplication(applicationInfo).getDrawable(i2, null);
                if (drawable != null) {
                    putCachedIcon(resourceName, drawable);
                }
                return drawable;
            } catch (PackageManager.NameNotFoundException unused2) {
                android.accessibilityservice.c.C(new StringBuilder("Failure retrieving resources for "), applicationInfo.packageName, "PackageManager");
            } catch (Resources.NotFoundException e2) {
                Log.w("PackageManager", "Failure retrieving resources for " + applicationInfo.packageName + ": " + e2.getMessage());
            } catch (Exception e3) {
                Log.w("PackageManager", "Failure retrieving icon 0x" + Integer.toHexString(i2) + " in package " + str, e3);
            }
        }
        return null;
    }

    public Drawable getDrawableForUser(String str, int i2, int i3) {
        ResourceName resourceName = new ResourceName(str, i2);
        Drawable cachedIcon = getCachedIcon(resourceName);
        if (cachedIcon != null) {
            return cachedIcon;
        }
        Bitmap userIcon = getUserManager().getUserIcon(i3);
        if (userIcon == null) {
            return null;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(userIcon);
        putCachedIcon(resourceName, bitmapDrawable);
        return bitmapDrawable;
    }

    @Override // android.content.pm.PackageManager
    public ComponentName getHomeActivities(List<ResolveInfo> list) {
        try {
            return this.mPM.getHomeActivities(list);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int getInstallReason(String str, UserHandle userHandle) {
        try {
            return this.mPM.getInstallReason(str, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ApplicationInfo> getInstalledApplications(int i2) {
        return getInstalledApplicationsAsUser(i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<ApplicationInfo> getInstalledApplicationsAsUser(int i2, int i3) {
        try {
            ParceledListSlice installedApplications = this.mPM.getInstalledApplications(i2, i3);
            if (installedApplications == null) {
                return Collections.emptyList();
            }
            List<ApplicationInfo> list = installedApplications.getList();
            Iterator<ApplicationInfo> it = list.iterator();
            while (it.hasNext()) {
                if ("com.sprd.opm".equals(it.next().packageName)) {
                    Log.e(TAG, "remove sprd.opm from getInstalledApplications");
                    it.remove();
                }
            }
            return list;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getInstalledPackages(int i2) {
        return getInstalledPackagesAsUser(i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getInstalledPackagesAsUser(int i2, int i3) {
        try {
            ParceledListSlice installedPackages = this.mPM.getInstalledPackages(i2, i3);
            if (installedPackages == null) {
                return Collections.emptyList();
            }
            List<PackageInfo> list = installedPackages.getList();
            Iterator<PackageInfo> it = list.iterator();
            while (it.hasNext()) {
                if ("com.sprd.opm".equals(it.next().packageName)) {
                    Log.e(TAG, "remove sprd.opm from getInstalledPackagesAsUser");
                    it.remove();
                }
            }
            return list;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String getInstallerPackageName(String str) {
        try {
            return this.mPM.getInstallerPackageName(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String getInstantAppAndroidId(String str, UserHandle userHandle) {
        try {
            return this.mPM.getInstantAppAndroidId(str, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    @Override // android.content.pm.PackageManager
    public byte[] getInstantAppCookie() {
        try {
            byte[] instantAppCookie = this.mPM.getInstantAppCookie(this.mContext.getPackageName(), this.mContext.getUserId());
            return instantAppCookie != null ? instantAppCookie : EmptyArray.BYTE;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int getInstantAppCookieMaxBytes() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), Settings.Global.EPHEMERAL_COOKIE_MAX_SIZE_BYTES, 16384);
    }

    @Override // android.content.pm.PackageManager
    public int getInstantAppCookieMaxSize() {
        return getInstantAppCookieMaxBytes();
    }

    @Override // android.content.pm.PackageManager
    public Drawable getInstantAppIcon(String str) {
        try {
            Bitmap instantAppIcon = this.mPM.getInstantAppIcon(str, this.mContext.getUserId());
            if (instantAppIcon != null) {
                return new BitmapDrawable((Resources) null, instantAppIcon);
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public ComponentName getInstantAppInstallerComponent() {
        try {
            return this.mPM.getInstantAppInstallerComponent();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    @Override // android.content.pm.PackageManager
    public ComponentName getInstantAppResolverSettingsComponent() {
        try {
            return this.mPM.getInstantAppResolverSettingsComponent();
        } catch (RemoteException e2) {
            throw e2.rethrowAsRuntimeException();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<InstantAppInfo> getInstantApps() {
        try {
            ParceledListSlice instantApps = this.mPM.getInstantApps(this.mContext.getUserId());
            return instantApps != null ? instantApps.getList() : Collections.emptyList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i2) {
        try {
            InstrumentationInfo instrumentationInfo = this.mPM.getInstrumentationInfo(componentName, i2);
            if (instrumentationInfo != null) {
                return instrumentationInfo;
            }
            throw new PackageManager.NameNotFoundException(componentName.toString());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<IntentFilterVerificationInfo> getIntentFilterVerifications(String str) {
        try {
            ParceledListSlice intentFilterVerifications = this.mPM.getIntentFilterVerifications(str);
            return intentFilterVerifications == null ? Collections.emptyList() : intentFilterVerifications.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int getIntentVerificationStatusAsUser(String str, int i2) {
        try {
            return this.mPM.getIntentVerificationStatus(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public KeySet getKeySetByAlias(String str, String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        try {
            return this.mPM.getKeySetByAlias(str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Intent getLaunchIntentForPackage(String str) {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_INFO);
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentActivities = queryIntentActivities(intent, 0);
        if (listQueryIntentActivities == null || listQueryIntentActivities.size() <= 0) {
            intent.removeCategory(Intent.CATEGORY_INFO);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.setPackage(str);
            listQueryIntentActivities = queryIntentActivities(intent, 0);
        }
        if (listQueryIntentActivities == null || listQueryIntentActivities.size() <= 0) {
            return null;
        }
        Intent intent2 = new Intent(intent);
        intent2.setFlags(268435456);
        intent2.setClassName(listQueryIntentActivities.get(0).activityInfo.packageName, listQueryIntentActivities.get(0).activityInfo.name);
        return intent2;
    }

    @Override // android.content.pm.PackageManager
    public Intent getLeanbackLaunchIntentForPackage(String str) {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory("android.intent.category.LEANBACK_LAUNCHER");
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentActivities = queryIntentActivities(intent, 0);
        if (listQueryIntentActivities == null || listQueryIntentActivities.size() <= 0) {
            return null;
        }
        Intent intent2 = new Intent(intent);
        intent2.setFlags(268435456);
        intent2.setClassName(listQueryIntentActivities.get(0).activityInfo.packageName, listQueryIntentActivities.get(0).activityInfo.name);
        return intent2;
    }

    @Override // android.content.pm.PackageManager
    public int getMoveStatus(int i2) {
        try {
            return this.mPM.getMoveStatus(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String getNameForUid(int i2) {
        try {
            return this.mPM.getNameForUid(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] getNamesForUids(int[] iArr) {
        try {
            return this.mPM.getNamesForUids(iArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<VolumeInfo> getPackageCandidateVolumes(ApplicationInfo applicationInfo) {
        return getPackageCandidateVolumes(applicationInfo, (StorageManager) this.mContext.getSystemService(StorageManager.class), this.mPM);
    }

    @Override // android.content.pm.PackageManager
    public VolumeInfo getPackageCurrentVolume(ApplicationInfo applicationInfo) {
        return getPackageCurrentVolume(applicationInfo, (StorageManager) this.mContext.getSystemService(StorageManager.class));
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str) {
        return getPackageGids(str, 0);
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(String str, int i2) {
        return getPackageInfoAsUser(str, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfoAsUser(String str, int i2, int i3) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = this.mPM.getPackageInfo(str, i2, i3);
            if (packageInfo != null) {
                return packageInfo;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public PackageInstaller getPackageInstaller() {
        PackageInstaller packageInstaller;
        synchronized (this.mLock) {
            if (this.mInstaller == null) {
                try {
                    this.mInstaller = new PackageInstaller(this.mPM.getPackageInstaller(), this.mContext.getPackageName(), this.mContext.getUserId());
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            packageInstaller = this.mInstaller;
        }
        return packageInstaller;
    }

    @Override // android.content.pm.PackageManager
    public void getPackageSizeInfoAsUser(String str, int i2, IPackageStatsObserver iPackageStatsObserver) {
        if (this.mContext.getApplicationInfo().targetSdkVersion >= 26) {
            throw new UnsupportedOperationException("Shame on you for calling the hidden API getPackageSizeInfoAsUser(). Shame!");
        }
        if (iPackageStatsObserver != null) {
            Log.d(TAG, "Shame on you for calling the hidden API getPackageSizeInfoAsUser(). Shame!");
            try {
                iPackageStatsObserver.onGetStatsCompleted(null, false);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.content.pm.PackageManager
    public int getPackageUid(String str, int i2) {
        return getPackageUidAsUser(str, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public int getPackageUidAsUser(String str, int i2) {
        return getPackageUidAsUser(str, 0, i2);
    }

    @Override // android.content.pm.PackageManager
    public String[] getPackagesForUid(int i2) {
        try {
            return this.mPM.getPackagesForUid(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPackagesHoldingPermissions(String[] strArr, int i2) {
        try {
            ParceledListSlice packagesHoldingPermissions = this.mPM.getPackagesHoldingPermissions(strArr, i2, this.mContext.getUserId());
            return packagesHoldingPermissions == null ? Collections.emptyList() : packagesHoldingPermissions.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String getPermissionControllerPackageName() {
        String str;
        synchronized (this.mLock) {
            if (this.mPermissionsControllerPackageName == null) {
                try {
                    this.mPermissionsControllerPackageName = this.mPM.getPermissionControllerPackageName();
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
            str = this.mPermissionsControllerPackageName;
        }
        return str;
    }

    @Override // android.content.pm.PackageManager
    public int getPermissionFlags(String str, String str2, UserHandle userHandle) {
        try {
            return this.mPM.getPermissionFlags(str, str2, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public PermissionGroupInfo getPermissionGroupInfo(String str, int i2) throws PackageManager.NameNotFoundException {
        try {
            PermissionGroupInfo permissionGroupInfo = this.mPM.getPermissionGroupInfo(str, i2);
            if (permissionGroupInfo != null) {
                return permissionGroupInfo;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public PermissionInfo getPermissionInfo(String str, int i2) throws PackageManager.NameNotFoundException {
        try {
            PermissionInfo permissionInfo = this.mPM.getPermissionInfo(str, this.mContext.getOpPackageName(), i2);
            if (permissionInfo != null) {
                return permissionInfo;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str) {
        try {
            return this.mPM.getPreferredActivities(list, list2, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPreferredPackages(int i2) {
        Log.w(TAG, "getPreferredPackages() is a no-op");
        return Collections.emptyList();
    }

    @Override // android.content.pm.PackageManager
    public List<VolumeInfo> getPrimaryStorageCandidateVolumes() {
        StorageManager storageManager = (StorageManager) this.mContext.getSystemService(StorageManager.class);
        VolumeInfo primaryStorageCurrentVolume = getPrimaryStorageCurrentVolume();
        List<VolumeInfo> volumes = storageManager.getVolumes();
        ArrayList arrayList = new ArrayList();
        if (!StorageManager.UUID_PRIMARY_PHYSICAL.equals(storageManager.getPrimaryStorageUuid()) || primaryStorageCurrentVolume == null) {
            for (VolumeInfo volumeInfo : volumes) {
                if (Objects.equals(volumeInfo, primaryStorageCurrentVolume) || isPrimaryStorageCandidateVolume(volumeInfo)) {
                    arrayList.add(volumeInfo);
                }
            }
        } else {
            arrayList.add(primaryStorageCurrentVolume);
        }
        return arrayList;
    }

    @Override // android.content.pm.PackageManager
    public VolumeInfo getPrimaryStorageCurrentVolume() {
        StorageManager storageManager = (StorageManager) this.mContext.getSystemService(StorageManager.class);
        return storageManager.findVolumeByQualifiedUuid(storageManager.getPrimaryStorageUuid());
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo getProviderInfo(ComponentName componentName, int i2) throws PackageManager.NameNotFoundException {
        try {
            ProviderInfo providerInfo = this.mPM.getProviderInfo(componentName, i2, this.mContext.getUserId());
            if (providerInfo != null) {
                return providerInfo;
            }
            throw new PackageManager.NameNotFoundException(componentName.toString());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getReceiverInfo(ComponentName componentName, int i2) throws PackageManager.NameNotFoundException {
        try {
            ActivityInfo receiverInfo = this.mPM.getReceiverInfo(componentName, i2, this.mContext.getUserId());
            if (receiverInfo != null) {
                return receiverInfo;
            }
            throw new PackageManager.NameNotFoundException(componentName.toString());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForActivity(ComponentName componentName) {
        return getResourcesForApplication(getActivityInfo(componentName, 1024).applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(ApplicationInfo applicationInfo) throws PackageManager.NameNotFoundException {
        if (applicationInfo.packageName.equals(StorageManager.UUID_SYSTEM)) {
            return this.mContext.mMainThread.getSystemUiContext().getResources();
        }
        boolean z2 = applicationInfo.uid == Process.myUid();
        ContextImpl contextImpl = this.mContext;
        Resources topLevelResources = contextImpl.mMainThread.getTopLevelResources(z2 ? applicationInfo.sourceDir : applicationInfo.publicSourceDir, z2 ? applicationInfo.splitSourceDirs : applicationInfo.splitPublicSourceDirs, applicationInfo.resourceDirs, applicationInfo.sharedLibraryFiles, 0, contextImpl.mPackageInfo);
        if (topLevelResources != null) {
            return topLevelResources;
        }
        throw new PackageManager.NameNotFoundException("Unable to open " + applicationInfo.publicSourceDir);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplicationAsUser(String str, int i2) throws PackageManager.NameNotFoundException {
        if (i2 < 0) {
            throw new IllegalArgumentException(android.accessibilityservice.c.d("Call does not support special user #", i2));
        }
        if (StorageManager.UUID_SYSTEM.equals(str)) {
            return this.mContext.mMainThread.getSystemUiContext().getResources();
        }
        try {
            ApplicationInfo applicationInfo = this.mPM.getApplicationInfo(str, 1024, i2);
            if (applicationInfo != null) {
                return getResourcesForApplication(applicationInfo);
            }
            throw new PackageManager.NameNotFoundException(android.accessibilityservice.c.k("Package ", str, " doesn't exist"));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public ServiceInfo getServiceInfo(ComponentName componentName, int i2) throws PackageManager.NameNotFoundException {
        try {
            ServiceInfo serviceInfo = this.mPM.getServiceInfo(componentName, i2, this.mContext.getUserId());
            if (serviceInfo != null) {
                return serviceInfo;
            }
            throw new PackageManager.NameNotFoundException(componentName.toString());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String getServicesSystemSharedLibraryPackageName() {
        try {
            return this.mPM.getServicesSystemSharedLibraryPackageName();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<SharedLibraryInfo> getSharedLibraries(int i2) {
        return getSharedLibrariesAsUser(i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<SharedLibraryInfo> getSharedLibrariesAsUser(int i2, int i3) {
        try {
            ParceledListSlice sharedLibraries = this.mPM.getSharedLibraries(this.mContext.getOpPackageName(), i2, i3);
            return sharedLibraries == null ? Collections.emptyList() : sharedLibraries.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String getSharedSystemSharedLibraryPackageName() {
        try {
            return this.mPM.getSharedSystemSharedLibraryPackageName();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public KeySet getSigningKeySet(String str) {
        Preconditions.checkNotNull(str);
        try {
            return this.mPM.getSigningKeySet(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public FeatureInfo[] getSystemAvailableFeatures() {
        try {
            ParceledListSlice systemAvailableFeatures = this.mPM.getSystemAvailableFeatures();
            if (systemAvailableFeatures == null) {
                return new FeatureInfo[0];
            }
            List list = systemAvailableFeatures.getList();
            int size = list.size();
            FeatureInfo[] featureInfoArr = new FeatureInfo[size];
            for (int i2 = 0; i2 < size; i2++) {
                featureInfoArr[i2] = (FeatureInfo) list.get(i2);
            }
            return featureInfoArr;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] getSystemSharedLibraryNames() {
        try {
            return this.mPM.getSystemSharedLibraryNames();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getText(String str, int i2, ApplicationInfo applicationInfo) {
        ResourceName resourceName = new ResourceName(str, i2);
        CharSequence cachedString = getCachedString(resourceName);
        if (cachedString != null) {
            return cachedString;
        }
        if (applicationInfo == null) {
            try {
                applicationInfo = getApplicationInfo(str, 1024);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        try {
            CharSequence text = getResourcesForApplication(applicationInfo).getText(i2);
            putCachedString(resourceName, text);
            return text;
        } catch (PackageManager.NameNotFoundException unused2) {
            android.accessibilityservice.c.C(new StringBuilder("Failure retrieving resources for "), applicationInfo.packageName, "PackageManager");
            return null;
        } catch (RuntimeException e2) {
            Log.w("PackageManager", "Failure retrieving text 0x" + Integer.toHexString(i2) + " in package " + str, e2);
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public int getUidForSharedUser(String str) throws PackageManager.NameNotFoundException {
        try {
            int uidForSharedUser = this.mPM.getUidForSharedUser(str);
            if (uidForSharedUser != -1) {
                return uidForSharedUser;
            }
            throw new PackageManager.NameNotFoundException(android.accessibilityservice.c.j("No shared userid for user:", str));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgeForDensity(UserHandle userHandle, int i2) {
        Drawable managedProfileIconForDensity = getManagedProfileIconForDensity(userHandle, R.drawable.ic_corp_badge_color, i2);
        if (managedProfileIconForDensity == null) {
            return null;
        }
        managedProfileIconForDensity.setTint(getUserBadgeColor(userHandle));
        return new LayerDrawable(new Drawable[]{managedProfileIconForDensity, getDrawableForDensity(R.drawable.ic_corp_badge_case, i2)});
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgeForDensityNoBackground(UserHandle userHandle, int i2) {
        Drawable managedProfileIconForDensity = getManagedProfileIconForDensity(userHandle, R.drawable.ic_corp_badge_no_background, i2);
        if (managedProfileIconForDensity != null) {
            managedProfileIconForDensity.setTint(getUserBadgeColor(userHandle));
        }
        return managedProfileIconForDensity;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedDrawableForDensity(Drawable drawable, UserHandle userHandle, Rect rect, int i2) {
        Drawable userBadgeForDensity = getUserBadgeForDensity(userHandle, i2);
        return userBadgeForDensity == null ? drawable : getBadgedDrawable(drawable, userBadgeForDensity, rect, true);
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedIcon(Drawable drawable, UserHandle userHandle) {
        String str;
        UserInfo userIfProfile = getUserIfProfile(userHandle.getIdentifier());
        if (userIfProfile != null) {
            AppCloneUserInfo appCloneUserInfo = new AppCloneUserInfo(userIfProfile);
            if (appCloneUserInfo.isAppClone() && (str = appCloneUserInfo.name) != null) {
                Drawable drawableForUser = getDrawableForUser(str, 0, userHandle.getIdentifier());
                if (drawableForUser != null) {
                    return getBadgedDrawable(drawable, drawableForUser, null, true);
                }
                Log.w(TAG, "Warning, no badgeIcon found for user :" + appCloneUserInfo + ".use orig ");
            }
        }
        return !isManagedProfile(userHandle.getIdentifier()) ? drawable : getBadgedDrawable(drawable, new LauncherIcons(this.mContext).getBadgeDrawable(R.drawable.ic_corp_icon_badge_case, getUserBadgeColor(userHandle)), null, true);
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getUserBadgedLabel(CharSequence charSequence, UserHandle userHandle) {
        if (!isManagedProfile(userHandle.getIdentifier())) {
            return charSequence;
        }
        int managedProfileBadge = getUserManager().getManagedProfileBadge(userHandle.getIdentifier());
        int[] iArr = CORP_BADGE_LABEL_RES_ID;
        return Resources.getSystem().getString(iArr[managedProfileBadge % iArr.length], charSequence);
    }

    public UserInfo getUserIfProfile(int i2) {
        for (UserInfo userInfo : getUserManager().getProfiles(UserHandle.myUserId())) {
            if (userInfo.id == i2) {
                return userInfo;
            }
        }
        return null;
    }

    public UserManager getUserManager() {
        UserManager userManager;
        synchronized (this.mLock) {
            if (this.mUserManager == null) {
                this.mUserManager = UserManager.get(this.mContext);
            }
            userManager = this.mUserManager;
        }
        return userManager;
    }

    @Override // android.content.pm.PackageManager
    public VerifierDeviceIdentity getVerifierDeviceIdentity() {
        try {
            return this.mPM.getVerifierDeviceIdentity();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public XmlResourceParser getXml(String str, int i2, ApplicationInfo applicationInfo) {
        if (applicationInfo == null) {
            try {
                applicationInfo = getApplicationInfo(str, 1024);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        try {
            return getResourcesForApplication(applicationInfo).getXml(i2);
        } catch (PackageManager.NameNotFoundException unused2) {
            android.accessibilityservice.c.C(new StringBuilder("Failure retrieving resources for "), applicationInfo.packageName, "PackageManager");
            return null;
        } catch (RuntimeException e2) {
            Log.w("PackageManager", "Failure retrieving xml 0x" + Integer.toHexString(i2) + " in package " + str, e2);
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public void grantRuntimePermission(String str, String str2, UserHandle userHandle) {
        try {
            this.mPM.grantRuntimePermission(str, str2, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str) {
        return hasSystemFeature(str, 0);
    }

    @Override // android.content.pm.PackageManager
    public int installExistingPackage(String str) {
        return installExistingPackage(str, 0);
    }

    @Override // android.content.pm.PackageManager
    public int installExistingPackageAsUser(String str, int i2) {
        return installExistingPackageAsUser(str, 0, i2);
    }

    @Override // android.content.pm.PackageManager
    public void installPackage(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str) {
        installCommon(uri, new PackageManager.LegacyPackageInstallObserver(iPackageInstallObserver), i2, str, this.mContext.getUserId());
    }

    public boolean isAllow3rdPartyOnInternal(Context context) {
        return context.getResources().getBoolean(R.bool.config_allow3rdPartyAppOnInternal);
    }

    public boolean isForceAllowOnExternal(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), Settings.Global.FORCE_ALLOW_ON_EXTERNAL, 0) != 0;
    }

    @Override // android.content.pm.PackageManager
    public boolean isInstantApp() {
        return isInstantApp(this.mContext.getPackageName());
    }

    @Override // android.content.pm.PackageManager
    public boolean isPackageAvailable(String str) {
        try {
            return this.mPM.isPackageAvailable(str, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean isPackageSuspendedForUser(String str, int i2) {
        try {
            return this.mPM.isPackageSuspendedForUser(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean isPermissionReviewModeEnabled() {
        return this.mContext.getResources().getBoolean(R.bool.config_permissionReviewRequired);
    }

    @Override // android.content.pm.PackageManager
    public boolean isPermissionRevokedByPolicy(String str, String str2) {
        try {
            return this.mPM.isPermissionRevokedByPolicy(str, str2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean isSafeMode() {
        try {
            if (this.mCachedSafeMode < 0) {
                this.mCachedSafeMode = this.mPM.isSafeMode() ? 1 : 0;
            }
            return this.mCachedSafeMode != 0;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean isSignedBy(String str, KeySet keySet) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(keySet);
        try {
            return this.mPM.isPackageSignedByKeySet(str, keySet);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean isSignedByExactly(String str, KeySet keySet) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(keySet);
        try {
            return this.mPM.isPackageSignedByKeySetExactly(str, keySet);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean isUpgrade() {
        try {
            return this.mPM.isUpgrade();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable loadItemIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
        Drawable drawableLoadUnbadgedItemIcon = loadUnbadgedItemIcon(packageItemInfo, applicationInfo);
        if (packageItemInfo.showUserIcon != -10000) {
            return drawableLoadUnbadgedItemIcon;
        }
        int userId = this.mContext.getUserId();
        if (applicationInfo != null && AppCloneUserInfo.isAppCloneUid(applicationInfo.uid)) {
            userId = UserHandle.getUserId(applicationInfo.uid);
        }
        if (applicationInfo != null && AppCloneUserInfo.isAppCloneUserId(UserHandle.myUserId())) {
            userId = UserHandle.getUserId(applicationInfo.uid);
        }
        return getUserBadgedIcon(drawableLoadUnbadgedItemIcon, new UserHandle(userId));
    }

    @Override // android.content.pm.PackageManager
    public Drawable loadUnbadgedItemIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
        if (packageItemInfo.showUserIcon != -10000) {
            Bitmap userIcon = getUserManager().getUserIcon(packageItemInfo.showUserIcon);
            return userIcon == null ? UserIcons.getDefaultUserIcon(packageItemInfo.showUserIcon, false) : new BitmapDrawable(userIcon);
        }
        String str = packageItemInfo.packageName;
        Drawable drawable = str != null ? getDrawable(str, packageItemInfo.icon, applicationInfo) : null;
        return drawable == null ? packageItemInfo.loadDefaultIcon(this) : drawable;
    }

    @Override // android.content.pm.PackageManager
    public int movePackage(String str, VolumeInfo volumeInfo) {
        String str2;
        try {
            if (VolumeInfo.ID_PRIVATE_INTERNAL.equals(volumeInfo.id)) {
                str2 = StorageManager.UUID_PRIVATE_INTERNAL;
            } else {
                str2 = volumeInfo.isPrimaryPhysical() ? StorageManager.UUID_PRIMARY_PHYSICAL : (String) Preconditions.checkNotNull(volumeInfo.fsUuid);
            }
            return this.mPM.movePackage(str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int movePrimaryStorage(VolumeInfo volumeInfo) {
        String str;
        try {
            if (VolumeInfo.ID_PRIVATE_INTERNAL.equals(volumeInfo.id)) {
                str = StorageManager.UUID_PRIVATE_INTERNAL;
            } else {
                str = volumeInfo.isPrimaryPhysical() ? StorageManager.UUID_PRIMARY_PHYSICAL : (String) Preconditions.checkNotNull(volumeInfo.fsUuid);
            }
            return this.mPM.movePrimaryStorage(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i2) {
        return queryBroadcastReceiversAsUser(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryBroadcastReceiversAsUser(Intent intent, int i2, int i3) {
        try {
            ParceledListSlice parceledListSliceQueryIntentReceivers = this.mPM.queryIntentReceivers(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
            return parceledListSliceQueryIntentReceivers == null ? Collections.emptyList() : parceledListSliceQueryIntentReceivers.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ProviderInfo> queryContentProviders(String str, int i2, int i3) {
        return queryContentProviders(str, i2, i3, null);
    }

    @Override // android.content.pm.PackageManager
    public List<InstrumentationInfo> queryInstrumentation(String str, int i2) {
        try {
            ParceledListSlice parceledListSliceQueryInstrumentation = this.mPM.queryInstrumentation(str, i2);
            return parceledListSliceQueryInstrumentation == null ? Collections.emptyList() : parceledListSliceQueryInstrumentation.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i2) {
        return queryIntentActivitiesAsUser(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivitiesAsUser(Intent intent, int i2, int i3) {
        try {
            ParceledListSlice parceledListSliceQueryIntentActivities = this.mPM.queryIntentActivities(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
            if (parceledListSliceQueryIntentActivities == null) {
                return Collections.emptyList();
            }
            List<ResolveInfo> list = parceledListSliceQueryIntentActivities.getList();
            Iterator<ResolveInfo> it = list.iterator();
            while (it.hasNext()) {
                ResolveInfo next = it.next();
                if (next.activityInfo != null) {
                    String packageName = this.mContext.getPackageName();
                    int i4 = 0;
                    if (packageName != null && AppCloneUserInfo.containsCloneTag(next.activityInfo.packageName)) {
                        ArrayList arrayList = new ArrayList();
                        try {
                            this.mPM.getHomeActivities(arrayList);
                            boolean z2 = false;
                            int i5 = 0;
                            while (i4 < arrayList.size()) {
                                try {
                                    ActivityInfo activityInfo = ((ResolveInfo) arrayList.get(i4)).activityInfo;
                                    Log.w(TAG, "home app :" + activityInfo.packageName);
                                    if (packageName.equals(activityInfo.packageName)) {
                                        if (packageName.equals("com.android.launcher3") || packageName.equals("com.android.sprdlauncher3") || packageName.equals("com.android.settings")) {
                                            z2 = true;
                                            i5 = 1;
                                        } else {
                                            z2 = true;
                                        }
                                    }
                                    i4++;
                                } catch (RemoteException e2) {
                                    e = e2;
                                    i4 = i5;
                                    Log.e(TAG, "getHomeActivities ERROR :" + e);
                                }
                            }
                            i4 = !z2 ? 1 : i5;
                        } catch (RemoteException e3) {
                            e = e3;
                        }
                    }
                    if ("com.sprd.opm".equals(next.activityInfo.packageName) || i4 != 0) {
                        Log.e(TAG, "remove sprd.opm from queryIntentActivitiesAsUser");
                        it.remove();
                    }
                }
            }
            return list;
        } catch (RemoteException e4) {
            throw e4.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, Intent intent, int i2) {
        String strResolveTypeIfNeeded;
        ContentResolver contentResolver = this.mContext.getContentResolver();
        String[] strArr = null;
        if (intentArr != null) {
            int length = intentArr.length;
            for (int i3 = 0; i3 < length; i3++) {
                Intent intent2 = intentArr[i3];
                if (intent2 != null && (strResolveTypeIfNeeded = intent2.resolveTypeIfNeeded(contentResolver)) != null) {
                    if (strArr == null) {
                        strArr = new String[length];
                    }
                    strArr[i3] = strResolveTypeIfNeeded;
                }
            }
        }
        try {
            ParceledListSlice parceledListSliceQueryIntentActivityOptions = this.mPM.queryIntentActivityOptions(componentName, intentArr, strArr, intent, intent.resolveTypeIfNeeded(contentResolver), i2, this.mContext.getUserId());
            return parceledListSliceQueryIntentActivityOptions == null ? Collections.emptyList() : parceledListSliceQueryIntentActivityOptions.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i2) {
        return queryIntentContentProvidersAsUser(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentContentProvidersAsUser(Intent intent, int i2, int i3) {
        try {
            ParceledListSlice parceledListSliceQueryIntentContentProviders = this.mPM.queryIntentContentProviders(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
            return parceledListSliceQueryIntentContentProviders == null ? Collections.emptyList() : parceledListSliceQueryIntentContentProviders.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentServices(Intent intent, int i2) {
        return queryIntentServicesAsUser(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentServicesAsUser(Intent intent, int i2, int i3) {
        try {
            ParceledListSlice parceledListSliceQueryIntentServices = this.mPM.queryIntentServices(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
            return parceledListSliceQueryIntentServices == null ? Collections.emptyList() : parceledListSliceQueryIntentServices.getList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionInfo> queryPermissionsByGroup(String str, int i2) throws PackageManager.NameNotFoundException {
        List<PermissionInfo> list;
        try {
            ParceledListSlice parceledListSliceQueryPermissionsByGroup = this.mPM.queryPermissionsByGroup(str, i2);
            if (parceledListSliceQueryPermissionsByGroup == null || (list = parceledListSliceQueryPermissionsByGroup.getList()) == null) {
                throw new PackageManager.NameNotFoundException(str);
            }
            return list;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void registerDexModule(String str, PackageManager.DexModuleRegisterCallback dexModuleRegisterCallback) {
        try {
            try {
                this.mPM.registerDexModule(this.mContext.getPackageName(), str, (Os.stat(str).st_mode & OsConstants.S_IROTH) != 0, dexModuleRegisterCallback != null ? new DexModuleRegisterCallbackDelegate(dexModuleRegisterCallback) : null);
            } catch (RemoteException e2) {
                throw e2.rethrowAsRuntimeException();
            }
        } catch (ErrnoException e3) {
            dexModuleRegisterCallback.onDexModuleRegistered(str, false, "Could not get stat the module file: " + e3.getMessage());
        }
    }

    @Override // android.content.pm.PackageManager
    public void registerMoveCallback(PackageManager.MoveCallback moveCallback, Handler handler) {
        synchronized (this.mDelegates) {
            MoveCallbackDelegate moveCallbackDelegate = new MoveCallbackDelegate(moveCallback, handler.getLooper());
            try {
                this.mPM.registerMoveCallback(moveCallbackDelegate);
                this.mDelegates.add(moveCallbackDelegate);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    @Override // android.content.pm.PackageManager
    public void removeOnPermissionsChangeListener(PackageManager.OnPermissionsChangedListener onPermissionsChangedListener) {
        synchronized (this.mPermissionListeners) {
            IOnPermissionsChangeListener iOnPermissionsChangeListener = this.mPermissionListeners.get(onPermissionsChangedListener);
            if (iOnPermissionsChangeListener != null) {
                try {
                    this.mPM.removeOnPermissionsChangeListener(iOnPermissionsChangeListener);
                    this.mPermissionListeners.remove(onPermissionsChangedListener);
                } catch (RemoteException e2) {
                    throw e2.rethrowFromSystemServer();
                }
            }
        }
    }

    @Override // android.content.pm.PackageManager
    public void removePackageFromPreferred(String str) {
        Log.w(TAG, "removePackageFromPreferred() is a no-op");
    }

    @Override // android.content.pm.PackageManager
    public void removePermission(String str) {
        try {
            this.mPM.removePermission(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void replacePreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName) {
        try {
            this.mPM.replacePreferredActivity(intentFilter, i2, componentNameArr, componentName, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void replacePreferredActivityAsUser(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName, int i3) {
        try {
            this.mPM.replacePreferredActivity(intentFilter, i2, componentNameArr, componentName, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveActivity(Intent intent, int i2) {
        return resolveActivityAsUser(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveActivityAsUser(Intent intent, int i2, int i3) {
        try {
            return this.mPM.resolveIntent(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo resolveContentProvider(String str, int i2) {
        return resolveContentProviderAsUser(str, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo resolveContentProviderAsUser(String str, int i2, int i3) {
        try {
            return this.mPM.resolveContentProvider(str, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveService(Intent intent, int i2) {
        try {
            return this.mPM.resolveService(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void revokeRuntimePermission(String str, String str2, UserHandle userHandle) {
        try {
            this.mPM.revokeRuntimePermission(str, str2, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationCategoryHint(String str, int i2) {
        try {
            this.mPM.setApplicationCategoryHint(str, i2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationEnabledSetting(String str, int i2, int i3) {
        try {
            this.mPM.setApplicationEnabledSetting(str, i2, i3, this.mContext.getUserId(), this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean setApplicationHiddenSettingAsUser(String str, boolean z2, UserHandle userHandle) {
        try {
            return this.mPM.setApplicationHiddenSettingAsUser(str, z2, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void setComponentEnabledSetting(ComponentName componentName, int i2, int i3) {
        try {
            this.mPM.setComponentEnabledSetting(componentName, i2, i3, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean setDefaultBrowserPackageNameAsUser(String str, int i2) {
        try {
            return this.mPM.setDefaultBrowserPackageName(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void setInstallerPackageName(String str, String str2) {
        try {
            this.mPM.setInstallerPackageName(str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean setInstantAppCookie(byte[] bArr) {
        try {
            return this.mPM.setInstantAppCookie(this.mContext.getPackageName(), bArr, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] setPackagesSuspendedAsUser(String[] strArr, boolean z2, int i2) {
        try {
            return this.mPM.setPackagesSuspendedAsUser(strArr, z2, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void setUpdateAvailable(String str, boolean z2) {
        try {
            this.mPM.setUpdateAvailable(str, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean shouldShowRequestPermissionRationale(String str) {
        try {
            return this.mPM.shouldShowRequestPermissionRationale(str, this.mContext.getPackageName(), this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void unregisterMoveCallback(PackageManager.MoveCallback moveCallback) {
        synchronized (this.mDelegates) {
            Iterator<MoveCallbackDelegate> it = this.mDelegates.iterator();
            while (it.hasNext()) {
                MoveCallbackDelegate next = it.next();
                if (next.mCallback == moveCallback) {
                    try {
                        this.mPM.unregisterMoveCallback(next);
                        it.remove();
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }
    }

    @Override // android.content.pm.PackageManager
    public void updateInstantAppCookie(byte[] bArr) {
        if (bArr != null && bArr.length > getInstantAppCookieMaxBytes()) {
            throw new IllegalArgumentException("instant cookie longer than " + getInstantAppCookieMaxBytes());
        }
        try {
            this.mPM.setInstantAppCookie(this.mContext.getPackageName(), bArr, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean updateIntentVerificationStatusAsUser(String str, int i2, int i3) {
        try {
            return this.mPM.updateIntentVerificationStatus(str, i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void updatePermissionFlags(String str, String str2, int i2, int i3, UserHandle userHandle) {
        try {
            this.mPM.updatePermissionFlags(str, str2, i2, i3, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void verifyIntentFilter(int i2, int i3, List<String> list) {
        try {
            this.mPM.verifyIntentFilter(i2, i3, list);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public void verifyPendingInstall(int i2, int i3) {
        try {
            this.mPM.verifyPendingInstall(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    private int installExistingPackageAsUser(String str, int i2, int i3) throws PackageManager.NameNotFoundException {
        try {
            int iInstallExistingPackageAsUser = this.mPM.installExistingPackageAsUser(str, i3, 0, i2);
            if (iInstallExistingPackageAsUser != -3) {
                return iInstallExistingPackageAsUser;
            }
            throw new PackageManager.NameNotFoundException("Package " + str + " doesn't exist");
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(Intent intent) throws PackageManager.NameNotFoundException {
        if (intent.getComponent() != null) {
            return getActivityBanner(intent.getComponent());
        }
        ResolveInfo resolveInfoResolveActivity = resolveActivity(intent, 65536);
        if (resolveInfoResolveActivity != null) {
            return resolveInfoResolveActivity.activityInfo.loadBanner(this);
        }
        throw new PackageManager.NameNotFoundException(intent.toUri(0));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(Intent intent) throws PackageManager.NameNotFoundException {
        if (intent.getComponent() != null) {
            return getActivityIcon(intent.getComponent());
        }
        ResolveInfo resolveInfoResolveActivity = resolveActivity(intent, 65536);
        if (resolveInfoResolveActivity != null) {
            return resolveInfoResolveActivity.activityInfo.loadIcon(this);
        }
        throw new PackageManager.NameNotFoundException(intent.toUri(0));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(Intent intent) throws PackageManager.NameNotFoundException {
        if (intent.getComponent() != null) {
            return getActivityLogo(intent.getComponent());
        }
        ResolveInfo resolveInfoResolveActivity = resolveActivity(intent, 65536);
        if (resolveInfoResolveActivity != null) {
            return resolveInfoResolveActivity.activityInfo.loadLogo(this);
        }
        throw new PackageManager.NameNotFoundException(intent.toUri(0));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(String str) {
        return getApplicationBanner(getApplicationInfo(str, 1024));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(String str) {
        return getApplicationIcon(getApplicationInfo(str, 1024));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(String str) {
        return getApplicationLogo(getApplicationInfo(str, 1024));
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str, int i2) throws PackageManager.NameNotFoundException {
        try {
            int[] packageGids = this.mPM.getPackageGids(str, i2, this.mContext.getUserId());
            if (packageGids != null) {
                return packageGids;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(VersionedPackage versionedPackage, int i2) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfoVersioned = this.mPM.getPackageInfoVersioned(versionedPackage, i2, this.mContext.getUserId());
            if (packageInfoVersioned != null) {
                return packageInfoVersioned;
            }
            throw new PackageManager.NameNotFoundException(versionedPackage.toString());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int getPackageUidAsUser(String str, int i2, int i3) throws PackageManager.NameNotFoundException {
        try {
            int packageUid = this.mPM.getPackageUid(str, i2, i3);
            if (packageUid >= 0) {
                return packageUid;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str, int i2) {
        try {
            return this.mPM.hasSystemFeature(str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public int installExistingPackage(String str, int i2) {
        return installExistingPackageAsUser(str, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public boolean isInstantApp(String str) {
        try {
            return this.mPM.isInstantApp(str, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ProviderInfo> queryContentProviders(String str, int i2, int i3, String str2) {
        try {
            ParceledListSlice parceledListSliceQueryContentProviders = this.mPM.queryContentProviders(str, i2, i3, str2);
            return parceledListSliceQueryContentProviders != null ? parceledListSliceQueryContentProviders.getList() : Collections.emptyList();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static final class ResourceName {
        final int iconId;
        final String packageName;

        public ResourceName(String str, int i2) {
            this.packageName = str;
            this.iconId = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ResourceName.class != obj.getClass()) {
                return false;
            }
            ResourceName resourceName = (ResourceName) obj;
            if (this.iconId != resourceName.iconId) {
                return false;
            }
            String str = this.packageName;
            if (str != null) {
                if (str.equals(resourceName.packageName)) {
                    return true;
                }
            } else if (resourceName.packageName == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.packageName.hashCode() * 31) + this.iconId;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{ResourceName ");
            sb.append(this.packageName);
            sb.append(" / ");
            return android.accessibilityservice.c.m(sb, this.iconId, "}");
        }

        public ResourceName(ApplicationInfo applicationInfo, int i2) {
            this(applicationInfo.packageName, i2);
        }

        public ResourceName(ComponentInfo componentInfo, int i2) {
            this(componentInfo.applicationInfo.packageName, i2);
        }

        public ResourceName(ResolveInfo resolveInfo, int i2) {
            this(resolveInfo.activityInfo.applicationInfo.packageName, i2);
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(int i2, int i3) {
        try {
            return this.mPM.checkUidSignatures(i2, i3);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<VolumeInfo> getPackageCandidateVolumes(ApplicationInfo applicationInfo, StorageManager storageManager, IPackageManager iPackageManager) {
        VolumeInfo packageCurrentVolume = getPackageCurrentVolume(applicationInfo, storageManager);
        List<VolumeInfo> volumes = storageManager.getVolumes();
        ArrayList arrayList = new ArrayList();
        for (VolumeInfo volumeInfo : volumes) {
            if (Objects.equals(volumeInfo, packageCurrentVolume) || isPackageCandidateVolume(this.mContext, applicationInfo, volumeInfo, iPackageManager)) {
                arrayList.add(volumeInfo);
            }
        }
        return arrayList;
    }

    public VolumeInfo getPackageCurrentVolume(ApplicationInfo applicationInfo, StorageManager storageManager) {
        if (applicationInfo.isInternal()) {
            return storageManager.findVolumeById(VolumeInfo.ID_PRIVATE_INTERNAL);
        }
        if (applicationInfo.isExternalAsec()) {
            StorageVolume storageVolume = storageManager.getStorageVolume(EnvironmentEx.getExternalStoragePath());
            if (storageVolume == null) {
                return null;
            }
            return storageManager.findVolumeById(storageVolume.getId());
        }
        return storageManager.findVolumeByUuid(applicationInfo.volumeUuid);
    }

    @Override // android.content.pm.PackageManager
    public void installPackage(Uri uri, PackageInstallObserver packageInstallObserver, int i2, String str) {
        installCommon(uri, packageInstallObserver, i2, str, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(String str) {
        return getResourcesForApplication(getApplicationInfo(str, 1024));
    }
}
