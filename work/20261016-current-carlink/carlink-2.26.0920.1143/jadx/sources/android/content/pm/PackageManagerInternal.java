package android.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class PackageManagerInternal {

    public interface ExternalSourcesPolicy {
        public static final int USER_BLOCKED = 1;
        public static final int USER_DEFAULT = 2;
        public static final int USER_TRUSTED = 0;

        int getPackageTrustedToInstallApps(String str, int i2);
    }

    public interface PackagesProvider {
        String[] getPackages(int i2);
    }

    public interface SyncAdapterPackagesProvider {
        String[] getPackages(String str, int i2);
    }

    public abstract void addIsolatedUid(int i2, int i3);

    public abstract boolean canAccessInstantApps(int i2, int i3);

    public abstract ActivityInfo getActivityInfo(ComponentName componentName, int i2, int i3, int i4);

    public abstract ApplicationInfo getApplicationInfo(String str, int i2, int i3, int i4);

    public abstract ComponentName getHomeActivitiesAsUser(List<ResolveInfo> list, int i2);

    public abstract String getNameForUid(int i2);

    public abstract List<PackageInfo> getOverlayPackages(int i2);

    public abstract PackageInfo getPackageInfo(String str, int i2, int i3, int i4);

    public abstract String getSetupWizardPackageName();

    public abstract List<String> getTargetPackageNames(int i2);

    public abstract int getUidTargetSdkVersion(int i2);

    public abstract void grantDefaultPermissionsToDefaultDialerApp(String str, int i2);

    public abstract void grantDefaultPermissionsToDefaultSimCallManager(String str, int i2);

    public abstract void grantDefaultPermissionsToDefaultSmsApp(String str, int i2);

    public abstract void grantEphemeralAccess(int i2, Intent intent, int i3, int i4);

    public abstract void grantRuntimePermission(String str, String str2, int i2, boolean z2);

    public abstract boolean hasInstantApplicationMetadata(String str, int i2);

    public abstract boolean isInstantAppInstallerComponent(ComponentName componentName);

    public abstract boolean isPackageDataProtected(int i2, String str);

    public abstract boolean isPackageEphemeral(int i2, String str);

    public abstract boolean isPackagePersistent(String str);

    public abstract boolean isPermissionsReviewRequired(String str, int i2);

    public abstract void notifyPackageUse(String str, int i2);

    public abstract void pruneInstantApps();

    public abstract List<ResolveInfo> queryIntentActivities(Intent intent, int i2, int i3, int i4);

    public abstract void removeIsolatedUid(int i2);

    public abstract void requestInstantAppResolutionPhaseTwo(AuxiliaryResolveInfo auxiliaryResolveInfo, Intent intent, String str, String str2, Bundle bundle, int i2);

    public abstract ResolveInfo resolveIntent(Intent intent, String str, int i2, int i3);

    public abstract ResolveInfo resolveService(Intent intent, String str, int i2, int i3, int i4);

    public abstract void revokeRuntimePermission(String str, String str2, int i2, boolean z2);

    public abstract void setDeviceAndProfileOwnerPackages(int i2, String str, SparseArray<String> sparseArray);

    public abstract void setDialerAppPackagesProvider(PackagesProvider packagesProvider);

    public abstract boolean setEnabledOverlayPackages(int i2, String str, List<String> list);

    public abstract void setExternalSourcesPolicy(ExternalSourcesPolicy externalSourcesPolicy);

    public abstract void setKeepUninstalledPackages(List<String> list);

    public abstract void setLocationPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setSimCallManagerPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setSmsAppPackagesProvider(PackagesProvider packagesProvider);

    public abstract void setSyncAdapterPackagesprovider(SyncAdapterPackagesProvider syncAdapterPackagesProvider);

    public abstract void setVoiceInteractionPackagesProvider(PackagesProvider packagesProvider);

    public abstract boolean wasPackageEverLaunched(String str, int i2);
}
