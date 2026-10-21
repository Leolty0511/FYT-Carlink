package android.app;

import android.R;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.ContainerEncryptionParams;
import android.content.pm.FeatureInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageDeleteObserver;
import android.content.pm.IPackageInstallObserver;
import android.content.pm.IPackageManager;
import android.content.pm.IPackageMoveObserver;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.InstrumentationInfo;
import android.content.pm.ManifestDigest;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.VerificationParams;
import android.content.pm.VerifierDeviceIdentity;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class ApplicationPackageManager extends PackageManager {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_ICONS = false;
    private static final String TAG = "ApplicationPackageManager";
    public int mCachedSafeMode = -1;
    private final ContextImpl mContext;
    private final IPackageManager mPM;
    private static final Object sSync = new Object();
    private static ArrayMap<ResourceName, WeakReference<Drawable.ConstantState>> sIconCache = new ArrayMap<>();
    private static ArrayMap<ResourceName, WeakReference<CharSequence>> sStringCache = new ArrayMap<>();

    public ApplicationPackageManager(ContextImpl contextImpl, IPackageManager iPackageManager) {
        this.mContext = contextImpl;
        this.mPM = iPackageManager;
    }

    public static void configurationChanged() {
        synchronized (sSync) {
            sIconCache.clear();
            sStringCache.clear();
        }
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
    public void addPackageToPreferred(String str) {
        try {
            this.mPM.addPackageToPreferred(str);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermission(PermissionInfo permissionInfo) {
        try {
            return this.mPM.addPermission(permissionInfo);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermissionAsync(PermissionInfo permissionInfo) {
        try {
            return this.mPM.addPermissionAsync(permissionInfo);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName) {
        try {
            this.mPM.addPreferredActivity(intentFilter, i2, componentNameArr, componentName, this.mContext.getUserId());
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] canonicalToCurrentPackageNames(String[] strArr) {
        try {
            return this.mPM.canonicalToCurrentPackageNames(strArr);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkPermission(String str, String str2) {
        try {
            return this.mPM.checkPermission(str, str2);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(String str, String str2) {
        try {
            return this.mPM.checkSignatures(str, str2);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public void clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver) {
        try {
            this.mPM.clearApplicationUserData(str, iPackageDataObserver, this.mContext.getUserId());
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void clearPackagePreferredActivities(String str) {
        try {
            this.mPM.clearPackagePreferredActivities(str);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] currentToCanonicalPackageNames(String[] strArr) {
        try {
            return this.mPM.currentToCanonicalPackageNames(strArr);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public void deleteApplicationCacheFiles(String str, IPackageDataObserver iPackageDataObserver) {
        try {
            this.mPM.deleteApplicationCacheFiles(str, iPackageDataObserver);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void deletePackage(String str, IPackageDeleteObserver iPackageDeleteObserver, int i2) {
        try {
            this.mPM.deletePackageAsUser(str, iPackageDeleteObserver, UserHandle.myUserId(), i2);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void extendVerificationTimeout(int i2, int i3, long j2) {
        try {
            this.mPM.extendVerificationTimeout(i2, i3, j2);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void freeStorage(long j2, IntentSender intentSender) {
        try {
            this.mPM.freeStorage(j2, intentSender);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void freeStorageAndNotify(long j2, IPackageDataObserver iPackageDataObserver) {
        try {
            this.mPM.freeStorageAndNotify(j2, iPackageDataObserver);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(ComponentName componentName) {
        return getActivityInfo(componentName, 0).loadIcon(this);
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
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(ComponentName componentName) {
        return getActivityInfo(componentName, 0).loadLogo(this);
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionGroupInfo> getAllPermissionGroups(int i2) {
        try {
            return this.mPM.getAllPermissionGroups(i2);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean getApplicationBlockedSettingAsUser(String str, UserHandle userHandle) {
        try {
            return this.mPM.getApplicationBlockedSettingAsUser(str, userHandle.getIdentifier());
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public int getApplicationEnabledSetting(String str) {
        try {
            return this.mPM.getApplicationEnabledSetting(str, this.mContext.getUserId());
        } catch (RemoteException unused) {
            return 0;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(ApplicationInfo applicationInfo) {
        return applicationInfo.loadIcon(this);
    }

    @Override // android.content.pm.PackageManager
    public ApplicationInfo getApplicationInfo(String str, int i2) throws PackageManager.NameNotFoundException {
        try {
            ApplicationInfo applicationInfo = this.mPM.getApplicationInfo(str, i2, this.mContext.getUserId());
            if (applicationInfo != null) {
                return applicationInfo;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
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
    public int getComponentEnabledSetting(ComponentName componentName) {
        try {
            return this.mPM.getComponentEnabledSetting(componentName, this.mContext.getUserId());
        } catch (RemoteException unused) {
            return 0;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDefaultActivityIcon() {
        return Resources.getSystem().getDrawable(R.drawable.sym_def_app_icon);
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
                applicationInfo = getApplicationInfo(str, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        try {
            Drawable drawable = getResourcesForApplication(applicationInfo).getDrawable(i2);
            putCachedIcon(resourceName, drawable);
            return drawable;
        } catch (PackageManager.NameNotFoundException unused2) {
            Log.w("PackageManager", "Failure retrieving resources for" + applicationInfo.packageName);
            return null;
        } catch (Resources.NotFoundException e2) {
            Log.w("PackageManager", "Failure retrieving resources for" + applicationInfo.packageName + ": " + e2.getMessage());
            return null;
        } catch (RuntimeException e3) {
            Log.w("PackageManager", "Failure retrieving icon 0x" + Integer.toHexString(i2) + " in package " + str, e3);
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public ComponentName getHomeActivities(List<ResolveInfo> list) {
        try {
            return this.mPM.getHomeActivities(list);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ApplicationInfo> getInstalledApplications(int i2) {
        try {
            return this.mPM.getInstalledApplications(i2, this.mContext.getUserId()).getList();
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getInstalledPackages(int i2) {
        return getInstalledPackages(i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public String getInstallerPackageName(String str) {
        try {
            return this.mPM.getInstallerPackageName(str);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i2) throws PackageManager.NameNotFoundException {
        try {
            InstrumentationInfo instrumentationInfo = this.mPM.getInstrumentationInfo(componentName, i2);
            if (instrumentationInfo != null) {
                return instrumentationInfo;
            }
            throw new PackageManager.NameNotFoundException(componentName.toString());
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
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
    public String getNameForUid(int i2) {
        try {
            return this.mPM.getNameForUid(i2);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str) throws PackageManager.NameNotFoundException {
        try {
            int[] packageGids = this.mPM.getPackageGids(str);
            if (packageGids == null || packageGids.length > 0) {
                return packageGids;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public int getPackageHardwareAccMode(String str) {
        try {
            return this.mPM.getPackageHardwareAccMode(str);
        } catch (RemoteException unused) {
            return 2;
        }
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(String str, int i2) throws PackageManager.NameNotFoundException {
        try {
            PackageInfo packageInfo = this.mPM.getPackageInfo(str, i2, this.mContext.getUserId());
            if (packageInfo != null) {
                return packageInfo;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public void getPackageSizeInfo(String str, int i2, IPackageStatsObserver iPackageStatsObserver) {
        try {
            this.mPM.getPackageSizeInfo(str, i2, iPackageStatsObserver);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public int getPackageUid(String str, int i2) throws PackageManager.NameNotFoundException {
        try {
            int packageUid = this.mPM.getPackageUid(str, i2);
            if (packageUid >= 0) {
                return packageUid;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] getPackagesForUid(int i2) {
        try {
            return this.mPM.getPackagesForUid(i2);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPackagesHoldingPermissions(String[] strArr, int i2) {
        try {
            return this.mPM.getPackagesHoldingPermissions(strArr, i2, this.mContext.getUserId()).getList();
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
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
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public PermissionInfo getPermissionInfo(String str, int i2) throws PackageManager.NameNotFoundException {
        try {
            PermissionInfo permissionInfo = this.mPM.getPermissionInfo(str, i2);
            if (permissionInfo != null) {
                return permissionInfo;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str) {
        try {
            return this.mPM.getPreferredActivities(list, list2, str);
        } catch (RemoteException unused) {
            return 0;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPreferredPackages(int i2) {
        try {
            return this.mPM.getPreferredPackages(i2);
        } catch (RemoteException unused) {
            return new ArrayList();
        }
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
            throw new RuntimeException("Package manager has died", e2);
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
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForActivity(ComponentName componentName) {
        return getResourcesForApplication(getActivityInfo(componentName, 0).applicationInfo);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(ApplicationInfo applicationInfo) throws PackageManager.NameNotFoundException {
        if (applicationInfo.packageName.equals("system")) {
            return this.mContext.mMainThread.getSystemContext().getResources();
        }
        Resources topLevelResources = this.mContext.mMainThread.getTopLevelResources(applicationInfo.uid == Process.myUid() ? applicationInfo.sourceDir : applicationInfo.publicSourceDir, 0, null, this.mContext.mPackageInfo);
        if (topLevelResources != null) {
            return topLevelResources;
        }
        throw new PackageManager.NameNotFoundException("Unable to open " + applicationInfo.publicSourceDir);
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplicationAsUser(String str, int i2) throws PackageManager.NameNotFoundException {
        if (i2 < 0) {
            throw new IllegalArgumentException("Call does not support special user #" + i2);
        }
        if ("system".equals(str)) {
            return this.mContext.mMainThread.getSystemContext().getResources();
        }
        try {
            ApplicationInfo applicationInfo = this.mPM.getApplicationInfo(str, 0, i2);
            if (applicationInfo != null) {
                return getResourcesForApplication(applicationInfo);
            }
            throw new PackageManager.NameNotFoundException("Package " + str + " doesn't exist");
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
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
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public FeatureInfo[] getSystemAvailableFeatures() {
        try {
            return this.mPM.getSystemAvailableFeatures();
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] getSystemSharedLibraryNames() {
        try {
            return this.mPM.getSystemSharedLibraryNames();
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
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
                applicationInfo = getApplicationInfo(str, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        try {
            CharSequence text = getResourcesForApplication(applicationInfo).getText(i2);
            putCachedString(resourceName, text);
            return text;
        } catch (PackageManager.NameNotFoundException unused2) {
            Log.w("PackageManager", "Failure retrieving resources for" + applicationInfo.packageName);
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
            throw new PackageManager.NameNotFoundException("No shared userid for user:" + str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public VerifierDeviceIdentity getVerifierDeviceIdentity() {
        try {
            return this.mPM.getVerifierDeviceIdentity();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public XmlResourceParser getXml(String str, int i2, ApplicationInfo applicationInfo) {
        if (applicationInfo == null) {
            try {
                applicationInfo = getApplicationInfo(str, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        try {
            return getResourcesForApplication(applicationInfo).getXml(i2);
        } catch (PackageManager.NameNotFoundException unused2) {
            Log.w("PackageManager", "Failure retrieving resources for " + applicationInfo.packageName);
            return null;
        } catch (RuntimeException e2) {
            Log.w("PackageManager", "Failure retrieving xml 0x" + Integer.toHexString(i2) + " in package " + str, e2);
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public void grantPermission(String str, String str2) {
        try {
            this.mPM.grantPermission(str, str2);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str) {
        try {
            return this.mPM.hasSystemFeature(str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public int installExistingPackage(String str) throws PackageManager.NameNotFoundException {
        try {
            int iInstallExistingPackageAsUser = this.mPM.installExistingPackageAsUser(str, UserHandle.myUserId());
            if (iInstallExistingPackageAsUser != -3) {
                return iInstallExistingPackageAsUser;
            }
            throw new PackageManager.NameNotFoundException("Package " + str + " doesn't exist");
        } catch (RemoteException unused) {
            throw new PackageManager.NameNotFoundException("Package " + str + " doesn't exist");
        }
    }

    @Override // android.content.pm.PackageManager
    public void installPackage(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str) {
        try {
            this.mPM.installPackage(uri, iPackageInstallObserver, i2, str);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void installPackageWithVerification(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str, Uri uri2, ManifestDigest manifestDigest, ContainerEncryptionParams containerEncryptionParams) {
        try {
            this.mPM.installPackageWithVerification(uri, iPackageInstallObserver, i2, str, uri2, manifestDigest, containerEncryptionParams);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void installPackageWithVerificationAndEncryption(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str, VerificationParams verificationParams, ContainerEncryptionParams containerEncryptionParams) {
        try {
            this.mPM.installPackageWithVerificationAndEncryption(uri, iPackageInstallObserver, i2, str, verificationParams, containerEncryptionParams);
        } catch (RemoteException unused) {
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
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public void movePackage(String str, IPackageMoveObserver iPackageMoveObserver, int i2) {
        try {
            this.mPM.movePackage(str, iPackageMoveObserver, i2);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i2, int i3) {
        try {
            return this.mPM.queryIntentReceivers(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ProviderInfo> queryContentProviders(String str, int i2, int i3) {
        try {
            return this.mPM.queryContentProviders(str, i2, i3);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<InstrumentationInfo> queryInstrumentation(String str, int i2) {
        try {
            return this.mPM.queryInstrumentation(str, i2);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i2) {
        return queryIntentActivitiesAsUser(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivitiesAsUser(Intent intent, int i2, int i3) {
        try {
            return this.mPM.queryIntentActivities(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
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
            return this.mPM.queryIntentActivityOptions(componentName, intentArr, strArr, intent, intent.resolveTypeIfNeeded(contentResolver), i2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i2) {
        return queryIntentContentProvidersAsUser(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentContentProvidersAsUser(Intent intent, int i2, int i3) {
        try {
            return this.mPM.queryIntentContentProviders(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentServices(Intent intent, int i2) {
        return queryIntentServicesAsUser(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentServicesAsUser(Intent intent, int i2, int i3) {
        try {
            return this.mPM.queryIntentServices(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i3);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionInfo> queryPermissionsByGroup(String str, int i2) throws PackageManager.NameNotFoundException {
        try {
            List<PermissionInfo> listQueryPermissionsByGroup = this.mPM.queryPermissionsByGroup(str, i2);
            if (listQueryPermissionsByGroup != null) {
                return listQueryPermissionsByGroup;
            }
            throw new PackageManager.NameNotFoundException(str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public void removePackageFromPreferred(String str) {
        try {
            this.mPM.removePackageFromPreferred(str);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void removePermission(String str) {
        try {
            this.mPM.removePermission(str);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public void replacePreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName) {
        try {
            this.mPM.replacePreferredActivity(intentFilter, i2, componentNameArr, componentName);
        } catch (RemoteException unused) {
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
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo resolveContentProvider(String str, int i2) {
        try {
            return this.mPM.resolveContentProvider(str, i2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveService(Intent intent, int i2) {
        try {
            return this.mPM.resolveService(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, this.mContext.getUserId());
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public void revokePermission(String str, String str2) {
        try {
            this.mPM.revokePermission(str, str2);
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean setApplicationBlockedSettingAsUser(String str, boolean z2, UserHandle userHandle) {
        try {
            return this.mPM.setApplicationBlockedSettingAsUser(str, z2, userHandle.getIdentifier());
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationEnabledSetting(String str, int i2, int i3) {
        try {
            this.mPM.setApplicationEnabledSetting(str, i2, i3, this.mContext.getUserId(), this.mContext.getOpPackageName());
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void setComponentEnabledSetting(ComponentName componentName, int i2, int i3) {
        try {
            this.mPM.setComponentEnabledSetting(componentName, i2, i3, this.mContext.getUserId());
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void setInstallerPackageName(String str, String str2) {
        try {
            this.mPM.setInstallerPackageName(str, str2);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void setPackageHardwareAccMode(String str, int i2) {
        try {
            this.mPM.setPackageHardwareAccMode(str, i2);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void verifyPendingInstall(int i2, int i3) {
        try {
            this.mPM.verifyPendingInstall(i2, i3);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName, int i3) {
        try {
            this.mPM.addPreferredActivity(intentFilter, i2, componentNameArr, componentName, i3);
        } catch (RemoteException unused) {
        }
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
    public Drawable getApplicationIcon(String str) {
        return getApplicationIcon(getApplicationInfo(str, 0));
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(String str) {
        return getApplicationLogo(getApplicationInfo(str, 0));
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getInstalledPackages(int i2, int i3) {
        try {
            return this.mPM.getInstalledPackages(i2, i3).getList();
        } catch (RemoteException e2) {
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    public static final class ResourceName {
        public final int iconId;
        public final String packageName;

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
            String str2 = resourceName.packageName;
            if (str != null) {
                if (str.equals(str2)) {
                    return true;
                }
            } else if (str2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.packageName.hashCode() * 31) + this.iconId;
        }

        public String toString() {
            return "{ResourceName " + this.packageName + " / " + this.iconId + "}";
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
            throw new RuntimeException("Package manager has died", e2);
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i2) {
        return queryBroadcastReceivers(intent, i2, this.mContext.getUserId());
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(String str) {
        return getResourcesForApplication(getApplicationInfo(str, 0));
    }
}
