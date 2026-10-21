package android.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IPackageManager extends IInterface {

    public static abstract class Stub extends Binder implements IPackageManager {
        private static final String DESCRIPTOR = "android.content.pm.IPackageManager";
        static final int TRANSACTION_activitySupportsIntent = 15;
        static final int TRANSACTION_addCrossProfileIntentFilter = 76;
        static final int TRANSACTION_addOnPermissionsChangeListener = 161;
        static final int TRANSACTION_addPermission = 21;
        static final int TRANSACTION_addPermissionAsync = 132;
        static final int TRANSACTION_addPersistentPreferredActivity = 74;
        static final int TRANSACTION_addPreferredActivity = 70;
        static final int TRANSACTION_backupAppData = 188;
        static final int TRANSACTION_canForwardTo = 44;
        static final int TRANSACTION_canRequestPackageInstalls = 181;
        static final int TRANSACTION_canonicalToCurrentPackageNames = 8;
        static final int TRANSACTION_checkPackageStartable = 1;
        static final int TRANSACTION_checkPermission = 19;
        static final int TRANSACTION_checkSignatures = 31;
        static final int TRANSACTION_checkUidPermission = 20;
        static final int TRANSACTION_checkUidSignatures = 32;
        static final int TRANSACTION_clearApplicationProfileData = 104;
        static final int TRANSACTION_clearApplicationUserData = 103;
        static final int TRANSACTION_clearCrossProfileIntentFilters = 77;
        static final int TRANSACTION_clearPackagePersistentPreferredActivities = 75;
        static final int TRANSACTION_clearPackagePreferredActivities = 72;
        static final int TRANSACTION_copyFileToDir = 187;
        static final int TRANSACTION_currentToCanonicalPackageNames = 7;
        static final int TRANSACTION_deleteApplicationCacheFiles = 101;
        static final int TRANSACTION_deleteApplicationCacheFilesAsUser = 102;
        static final int TRANSACTION_deletePackageAsUser = 64;
        static final int TRANSACTION_deletePackageVersioned = 65;
        static final int TRANSACTION_deletePreloadsFileCache = 182;
        static final int TRANSACTION_dumpProfiles = 120;
        static final int TRANSACTION_enterSafeMode = 109;
        static final int TRANSACTION_extendVerificationTimeout = 137;
        static final int TRANSACTION_findPersistentPreferredActivity = 43;
        static final int TRANSACTION_finishPackageInstall = 61;
        static final int TRANSACTION_flushPackageRestrictionsAsUser = 97;
        static final int TRANSACTION_forceDexOpt = 121;
        static final int TRANSACTION_freeStorage = 100;
        static final int TRANSACTION_freeStorageAndNotify = 99;
        static final int TRANSACTION_getActivityInfo = 14;
        static final int TRANSACTION_getAllIntentFilters = 142;
        static final int TRANSACTION_getAllPackages = 33;
        static final int TRANSACTION_getAllPermissionGroups = 12;
        static final int TRANSACTION_getAppOpPermissionPackages = 41;
        static final int TRANSACTION_getApplicationEnabledSetting = 95;
        static final int TRANSACTION_getApplicationHiddenSettingAsUser = 153;
        static final int TRANSACTION_getApplicationInfo = 13;
        static final int TRANSACTION_getBlockUninstallForUser = 156;
        static final int TRANSACTION_getChangedPackages = 176;
        static final int TRANSACTION_getComponentEnabledSetting = 93;
        static final int TRANSACTION_getDefaultAppsBackup = 82;
        static final int TRANSACTION_getDefaultBrowserPackageName = 144;
        static final int TRANSACTION_getFlagsForUid = 38;
        static final int TRANSACTION_getHomeActivities = 88;
        static final int TRANSACTION_getInstallLocation = 134;
        static final int TRANSACTION_getInstallReason = 179;
        static final int TRANSACTION_getInstalledApplications = 53;
        static final int TRANSACTION_getInstalledPackages = 51;
        static final int TRANSACTION_getInstallerPackageName = 66;
        static final int TRANSACTION_getInstantAppAndroidId = 186;
        static final int TRANSACTION_getInstantAppCookie = 168;
        static final int TRANSACTION_getInstantAppIcon = 170;
        static final int TRANSACTION_getInstantAppInstallerComponent = 185;
        static final int TRANSACTION_getInstantAppResolverComponent = 183;
        static final int TRANSACTION_getInstantAppResolverSettingsComponent = 184;
        static final int TRANSACTION_getInstantApps = 167;
        static final int TRANSACTION_getInstrumentationInfo = 58;
        static final int TRANSACTION_getIntentFilterVerificationBackup = 84;
        static final int TRANSACTION_getIntentFilterVerifications = 141;
        static final int TRANSACTION_getIntentVerificationStatus = 139;
        static final int TRANSACTION_getKeySetByAlias = 157;
        static final int TRANSACTION_getLastChosenActivity = 68;
        static final int TRANSACTION_getMoveStatus = 126;
        static final int TRANSACTION_getNameForUid = 35;
        static final int TRANSACTION_getNamesForUids = 36;
        static final int TRANSACTION_getPackageGids = 6;
        static final int TRANSACTION_getPackageInfo = 3;
        static final int TRANSACTION_getPackageInfoVersioned = 4;
        static final int TRANSACTION_getPackageInstaller = 154;
        static final int TRANSACTION_getPackageSizeInfo = 105;
        static final int TRANSACTION_getPackageUid = 5;
        static final int TRANSACTION_getPackagesForUid = 34;
        static final int TRANSACTION_getPackagesHoldingPermissions = 52;
        static final int TRANSACTION_getPermissionControllerPackageName = 166;
        static final int TRANSACTION_getPermissionFlags = 26;
        static final int TRANSACTION_getPermissionGrantBackup = 86;
        static final int TRANSACTION_getPermissionGroupInfo = 11;
        static final int TRANSACTION_getPermissionInfo = 9;
        static final int TRANSACTION_getPersistentApplications = 54;
        static final int TRANSACTION_getPreferredActivities = 73;
        static final int TRANSACTION_getPreferredActivityBackup = 80;
        static final int TRANSACTION_getPreviousCodePaths = 178;
        static final int TRANSACTION_getPrivateFlagsForUid = 39;
        static final int TRANSACTION_getProviderInfo = 18;
        static final int TRANSACTION_getReceiverInfo = 16;
        static final int TRANSACTION_getServiceInfo = 17;
        static final int TRANSACTION_getServicesSystemSharedLibraryPackageName = 174;
        static final int TRANSACTION_getSharedLibraries = 180;
        static final int TRANSACTION_getSharedSystemSharedLibraryPackageName = 175;
        static final int TRANSACTION_getSigningKeySet = 158;
        static final int TRANSACTION_getSystemAvailableFeatures = 107;
        static final int TRANSACTION_getSystemSharedLibraryNames = 106;
        static final int TRANSACTION_getUidForSharedUser = 37;
        static final int TRANSACTION_getVerifierDeviceIdentity = 145;
        static final int TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps = 163;
        static final int TRANSACTION_grantDefaultPermissionsToEnabledImsServices = 164;
        static final int TRANSACTION_grantRuntimePermission = 23;
        static final int TRANSACTION_hasSystemFeature = 108;
        static final int TRANSACTION_hasSystemUidErrors = 112;
        static final int TRANSACTION_installExistingPackageAsUser = 135;
        static final int TRANSACTION_installPackageAsUser = 60;
        static final int TRANSACTION_isFirstBoot = 146;
        static final int TRANSACTION_isInstantApp = 171;
        static final int TRANSACTION_isOnlyCoreApps = 147;
        static final int TRANSACTION_isPackageAvailable = 2;
        static final int TRANSACTION_isPackageDeviceAdminOnAnyUser = 177;
        static final int TRANSACTION_isPackageSignedByKeySet = 159;
        static final int TRANSACTION_isPackageSignedByKeySetExactly = 160;
        static final int TRANSACTION_isPackageSuspendedForUser = 79;
        static final int TRANSACTION_isPermissionEnforced = 150;
        static final int TRANSACTION_isPermissionRevokedByPolicy = 165;
        static final int TRANSACTION_isProtectedBroadcast = 30;
        static final int TRANSACTION_isSafeMode = 110;
        static final int TRANSACTION_isStorageLow = 151;
        static final int TRANSACTION_isUidPrivileged = 40;
        static final int TRANSACTION_isUpgrade = 148;
        static final int TRANSACTION_logAppProcessStartIfNeeded = 96;
        static final int TRANSACTION_movePackage = 129;
        static final int TRANSACTION_movePrimaryEmulatedStorage = 131;
        static final int TRANSACTION_movePrimaryStorage = 130;
        static final int TRANSACTION_nextPackageToClean = 125;
        static final int TRANSACTION_notifyDexLoad = 116;
        static final int TRANSACTION_notifyPackageUse = 115;
        static final int TRANSACTION_performDexOptMode = 118;
        static final int TRANSACTION_performDexOptSecondary = 119;
        static final int TRANSACTION_performFstrimIfNeeded = 113;
        static final int TRANSACTION_queryContentProviders = 57;
        static final int TRANSACTION_queryInstrumentation = 59;
        static final int TRANSACTION_queryIntentActivities = 45;
        static final int TRANSACTION_queryIntentActivityOptions = 46;
        static final int TRANSACTION_queryIntentContentProviders = 50;
        static final int TRANSACTION_queryIntentReceivers = 47;
        static final int TRANSACTION_queryIntentServices = 49;
        static final int TRANSACTION_queryPermissionsByGroup = 10;
        static final int TRANSACTION_querySyncProviders = 56;
        static final int TRANSACTION_reconcileSecondaryDexFiles = 123;
        static final int TRANSACTION_registerDexModule = 117;
        static final int TRANSACTION_registerMoveCallback = 127;
        static final int TRANSACTION_removeOnPermissionsChangeListener = 162;
        static final int TRANSACTION_removePermission = 22;
        static final int TRANSACTION_replacePreferredActivity = 71;
        static final int TRANSACTION_resetApplicationPreferences = 67;
        static final int TRANSACTION_resetRuntimePermissions = 25;
        static final int TRANSACTION_resolveContentProvider = 55;
        static final int TRANSACTION_resolveIntent = 42;
        static final int TRANSACTION_resolveService = 48;
        static final int TRANSACTION_restoreAppData = 189;
        static final int TRANSACTION_restoreDefaultApps = 83;
        static final int TRANSACTION_restoreIntentFilterVerification = 85;
        static final int TRANSACTION_restorePermissionGrants = 87;
        static final int TRANSACTION_restorePreferredActivities = 81;
        static final int TRANSACTION_revokeRuntimePermission = 24;
        static final int TRANSACTION_runBackgroundDexoptJob = 122;
        static final int TRANSACTION_setApplicationCategoryHint = 63;
        static final int TRANSACTION_setApplicationEnabledSetting = 94;
        static final int TRANSACTION_setApplicationHiddenSettingAsUser = 152;
        static final int TRANSACTION_setBlockUninstallForUser = 155;
        static final int TRANSACTION_setComponentEnabledSetting = 90;
        static final int TRANSACTION_setComponentEnabledSettingForSetupMenu = 91;
        static final int TRANSACTION_setComponentEnabledSettingForSpecific = 92;
        static final int TRANSACTION_setDefaultBrowserPackageName = 143;
        static final int TRANSACTION_setHomeActivity = 89;
        static final int TRANSACTION_setInstallLocation = 133;
        static final int TRANSACTION_setInstallerPackageName = 62;
        static final int TRANSACTION_setInstantAppCookie = 169;
        static final int TRANSACTION_setLastChosenActivity = 69;
        static final int TRANSACTION_setPackageStoppedState = 98;
        static final int TRANSACTION_setPackagesSuspendedAsUser = 78;
        static final int TRANSACTION_setPermissionEnforced = 149;
        static final int TRANSACTION_setRequiredForSystemUser = 172;
        static final int TRANSACTION_setUpdateAvailable = 173;
        static final int TRANSACTION_shouldShowRequestPermissionRationale = 29;
        static final int TRANSACTION_systemReady = 111;
        static final int TRANSACTION_unregisterMoveCallback = 128;
        static final int TRANSACTION_updateExternalMediaStatus = 124;
        static final int TRANSACTION_updateIntentVerificationStatus = 140;
        static final int TRANSACTION_updatePackagesIfNeeded = 114;
        static final int TRANSACTION_updatePermissionFlags = 27;
        static final int TRANSACTION_updatePermissionFlagsForAllApps = 28;
        static final int TRANSACTION_verifyIntentFilter = 138;
        static final int TRANSACTION_verifyPendingInstall = 136;

        public static class Proxy implements IPackageManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.content.pm.IPackageManager
            public boolean activitySupportsIntent(ComponentName componentName, Intent intent, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void addCrossProfileIntentFilter(IntentFilter intentFilter, String str, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intentFilter != null) {
                        parcelObtain.writeInt(1);
                        intentFilter.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void addOnPermissionsChangeListener(IOnPermissionsChangeListener iOnPermissionsChangeListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOnPermissionsChangeListener != null ? iOnPermissionsChangeListener.asBinder() : null);
                    this.mRemote.transact(161, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean addPermission(PermissionInfo permissionInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (permissionInfo != null) {
                        parcelObtain.writeInt(1);
                        permissionInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean addPermissionAsync(PermissionInfo permissionInfo) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (permissionInfo != null) {
                        parcelObtain.writeInt(1);
                        permissionInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(132, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void addPersistentPreferredActivity(IntentFilter intentFilter, ComponentName componentName, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intentFilter != null) {
                        parcelObtain.writeInt(1);
                        intentFilter.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void addPreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intentFilter != null) {
                        parcelObtain.writeInt(1);
                        intentFilter.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedArray(componentNameArr, 0);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.content.pm.IPackageManager
            public int backupAppData(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(188, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean canForwardTo(Intent intent, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean canRequestPackageInstalls(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(181, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] canonicalToCurrentPackageNames(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void checkPackageStartable(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkPermission(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkSignatures(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkUidPermission(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkUidSignatures(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearApplicationProfileData(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(104, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iPackageDataObserver != null ? iPackageDataObserver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(103, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearCrossProfileIntentFilters(int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearPackagePersistentPreferredActivities(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void clearPackagePreferredActivities(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int copyFileToDir(String str, String str2, String str3, String str4, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(187, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] currentToCanonicalPackageNames(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deleteApplicationCacheFiles(String str, IPackageDataObserver iPackageDataObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iPackageDataObserver != null ? iPackageDataObserver.asBinder() : null);
                    this.mRemote.transact(101, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deleteApplicationCacheFilesAsUser(String str, int i2, IPackageDataObserver iPackageDataObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iPackageDataObserver != null ? iPackageDataObserver.asBinder() : null);
                    this.mRemote.transact(102, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deletePackageAsUser(String str, int i2, IPackageDeleteObserver iPackageDeleteObserver, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iPackageDeleteObserver != null ? iPackageDeleteObserver.asBinder() : null);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deletePackageVersioned(VersionedPackage versionedPackage, IPackageDeleteObserver2 iPackageDeleteObserver2, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (versionedPackage != null) {
                        parcelObtain.writeInt(1);
                        versionedPackage.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iPackageDeleteObserver2 != null ? iPackageDeleteObserver2.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deletePreloadsFileCache() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(182, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void dumpProfiles(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(120, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void enterSafeMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(109, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void extendVerificationTimeout(int i2, int i3, long j2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeLong(j2);
                    this.mRemote.transact(137, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ResolveInfo findPersistentPreferredActivity(Intent intent, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void finishPackageInstall(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void flushPackageRestrictionsAsUser(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(97, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void forceDexOpt(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(121, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void freeStorage(String str, long j2, int i2, IntentSender intentSender) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i2);
                    if (intentSender != null) {
                        parcelObtain.writeInt(1);
                        intentSender.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(100, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void freeStorageAndNotify(String str, long j2, int i2, IPackageDataObserver iPackageDataObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iPackageDataObserver != null ? iPackageDataObserver.asBinder() : null);
                    this.mRemote.transact(99, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ActivityInfo getActivityInfo(ComponentName componentName, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ActivityInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getAllIntentFilters(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(142, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<String> getAllPackages() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getAllPermissionGroups(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getAppOpPermissionPackages(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getApplicationEnabledSetting(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(95, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean getApplicationHiddenSettingAsUser(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(153, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ApplicationInfo getApplicationInfo(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ApplicationInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean getBlockUninstallForUser(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(156, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ChangedPackages getChangedPackages(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(176, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ChangedPackages.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getComponentEnabledSetting(ComponentName componentName, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(93, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getDefaultAppsBackup(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(82, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getDefaultBrowserPackageName(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(144, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getFlagsForUid(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ComponentName getHomeActivities(List<ResolveInfo> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(88, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    ComponentName componentNameCreateFromParcel = parcelObtain2.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                    parcelObtain2.readTypedList(list, ResolveInfo.CREATOR);
                    return componentNameCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getInstallLocation() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(134, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getInstallReason(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(179, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getInstalledApplications(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getInstalledPackages(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getInstallerPackageName(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getInstantAppAndroidId(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(186, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getInstantAppCookie(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(168, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public Bitmap getInstantAppIcon(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(170, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bitmap.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ComponentName getInstantAppInstallerComponent() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(185, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ComponentName getInstantAppResolverComponent() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(183, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ComponentName getInstantAppResolverSettingsComponent() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(184, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getInstantApps(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(167, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? InstrumentationInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getIntentFilterVerificationBackup(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(84, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getIntentFilterVerifications(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(141, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getIntentVerificationStatus(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(139, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.content.pm.IPackageManager
            public KeySet getKeySetByAlias(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(157, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? KeySet.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ResolveInfo getLastChosenActivity(Intent intent, String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getMoveStatus(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(126, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getNameForUid(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getNamesForUids(int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int[] getPackageGids(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PackageInfo getPackageInfo(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PackageInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PackageInfo getPackageInfoVersioned(VersionedPackage versionedPackage, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (versionedPackage != null) {
                        parcelObtain.writeInt(1);
                        versionedPackage.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PackageInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public IPackageInstaller getPackageInstaller() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(154, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IPackageInstaller.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void getPackageSizeInfo(String str, int i2, IPackageStatsObserver iPackageStatsObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(iPackageStatsObserver != null ? iPackageStatsObserver.asBinder() : null);
                    this.mRemote.transact(105, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPackageUid(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getPackagesForUid(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getPackagesHoldingPermissions(String[] strArr, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getPermissionControllerPackageName() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(166, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPermissionFlags(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getPermissionGrantBackup(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(86, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PermissionGroupInfo getPermissionGroupInfo(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PermissionGroupInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PermissionInfo getPermissionInfo(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PermissionInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getPersistentApplications(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i2 = parcelObtain2.readInt();
                    parcelObtain2.readTypedList(list, IntentFilter.CREATOR);
                    parcelObtain2.readTypedList(list2, ComponentName.CREATOR);
                    return i2;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public byte[] getPreferredActivityBackup(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(80, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<String> getPreviousCodePaths(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(178, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPrivateFlagsForUid(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ProviderInfo getProviderInfo(ComponentName componentName, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ProviderInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ActivityInfo getReceiverInfo(ComponentName componentName, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ActivityInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ServiceInfo getServiceInfo(ComponentName componentName, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ServiceInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getServicesSystemSharedLibraryPackageName() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(174, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getSharedLibraries(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(180, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String getSharedSystemSharedLibraryPackageName() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(175, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public KeySet getSigningKeySet(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(158, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? KeySet.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice getSystemAvailableFeatures() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(107, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] getSystemSharedLibraryNames() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(106, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getUidForSharedUser(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public VerifierDeviceIdentity getVerifierDeviceIdentity() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(145, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? VerifierDeviceIdentity.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void grantDefaultPermissionsToEnabledCarrierApps(String[] strArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(163, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void grantDefaultPermissionsToEnabledImsServices(String[] strArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(164, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void grantRuntimePermission(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean hasSystemFeature(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(108, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean hasSystemUidErrors() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(112, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int installExistingPackageAsUser(String str, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(135, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void installPackageAsUser(String str, IPackageInstallObserver2 iPackageInstallObserver2, int i2, String str2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iPackageInstallObserver2 != null ? iPackageInstallObserver2.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isFirstBoot() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(146, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isInstantApp(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(171, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isOnlyCoreApps() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(147, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageAvailable(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageDeviceAdminOnAnyUser(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(177, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageSignedByKeySet(String str, KeySet keySet) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (keySet != null) {
                        parcelObtain.writeInt(1);
                        keySet.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(159, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageSignedByKeySetExactly(String str, KeySet keySet) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (keySet != null) {
                        parcelObtain.writeInt(1);
                        keySet.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(160, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPackageSuspendedForUser(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(79, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPermissionEnforced(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(150, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isPermissionRevokedByPolicy(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(165, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isProtectedBroadcast(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isSafeMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(110, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isStorageLow() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(151, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isUidPrivileged(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean isUpgrade() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(148, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void logAppProcessStartIfNeeded(String str, int i2, String str2, String str3, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(96, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int movePackage(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(129, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int movePrimaryEmulatedStorage(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(131, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int movePrimaryStorage(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(130, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PackageCleanItem nextPackageToClean(PackageCleanItem packageCleanItem) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (packageCleanItem != null) {
                        parcelObtain.writeInt(1);
                        packageCleanItem.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(125, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PackageCleanItem.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void notifyDexLoad(String str, List<String> list, List<String> list2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeStringList(list2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(116, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void notifyPackageUse(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(115, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean performDexOptMode(String str, boolean z2, String str2, boolean z3, boolean z4, String str3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    parcelObtain.writeString(str3);
                    this.mRemote.transact(118, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean performDexOptSecondary(String str, String str2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(119, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void performFstrimIfNeeded() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(113, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryContentProviders(String str, int i2, int i3, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryInstrumentation(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentActivities(Intent intent, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, String[] strArr, Intent intent, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeTypedArray(intentArr, 0);
                    parcelObtain.writeStringArray(strArr);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentContentProviders(Intent intent, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentReceivers(Intent intent, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryIntentServices(Intent intent, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ParceledListSlice queryPermissionsByGroup(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void querySyncProviders(List<String> list, List<ProviderInfo> list2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeTypedList(list2);
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.readStringList(list);
                    parcelObtain2.readTypedList(list2, ProviderInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void reconcileSecondaryDexFiles(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(123, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void registerDexModule(String str, String str2, boolean z2, IDexModuleRegisterCallback iDexModuleRegisterCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStrongBinder(iDexModuleRegisterCallback != null ? iDexModuleRegisterCallback.asBinder() : null);
                    this.mRemote.transact(117, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void registerMoveCallback(IPackageMoveObserver iPackageMoveObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPackageMoveObserver != null ? iPackageMoveObserver.asBinder() : null);
                    this.mRemote.transact(127, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void removeOnPermissionsChangeListener(IOnPermissionsChangeListener iOnPermissionsChangeListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iOnPermissionsChangeListener != null ? iOnPermissionsChangeListener.asBinder() : null);
                    this.mRemote.transact(162, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void removePermission(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void replacePreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intentFilter != null) {
                        parcelObtain.writeInt(1);
                        intentFilter.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedArray(componentNameArr, 0);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(71, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void resetApplicationPreferences(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(67, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void resetRuntimePermissions() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ProviderInfo resolveContentProvider(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ProviderInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ResolveInfo resolveIntent(Intent intent, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public ResolveInfo resolveService(Intent intent, String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int restoreAppData(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(189, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void restoreDefaultApps(byte[] bArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(83, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void restoreIntentFilterVerification(byte[] bArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(85, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void restorePermissionGrants(byte[] bArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(87, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void restorePreferredActivities(byte[] bArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(81, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void revokeRuntimePermission(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean runBackgroundDexoptJob() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(122, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setApplicationCategoryHint(String str, int i2, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setApplicationEnabledSetting(String str, int i2, int i3, int i4, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(94, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setApplicationHiddenSettingAsUser(String str, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(152, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setBlockUninstallForUser(String str, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(155, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setComponentEnabledSetting(ComponentName componentName, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(90, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setComponentEnabledSettingForSetupMenu(ComponentName componentName, int i2, int i3, Intent intent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(91, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setComponentEnabledSettingForSpecific(ComponentName componentName, int i2, int i3, int i4, Intent intent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(92, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setDefaultBrowserPackageName(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(143, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setHomeActivity(ComponentName componentName, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(89, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setInstallLocation(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(133, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setInstallerPackageName(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setInstantAppCookie(String str, byte[] bArr, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(169, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setLastChosenActivity(Intent intent, String str, int i2, IntentFilter intentFilter, int i3, ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (intent != null) {
                        parcelObtain.writeInt(1);
                        intent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    if (intentFilter != null) {
                        parcelObtain.writeInt(1);
                        intentFilter.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setPackageStoppedState(String str, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(98, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public String[] setPackagesSuspendedAsUser(String[] strArr, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(78, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setPermissionEnforced(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(149, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setRequiredForSystemUser(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(172, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setUpdateAvailable(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(173, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean shouldShowRequestPermissionRationale(String str, String str2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void systemReady() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(111, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void unregisterMoveCallback(IPackageMoveObserver iPackageMoveObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPackageMoveObserver != null ? iPackageMoveObserver.asBinder() : null);
                    this.mRemote.transact(128, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void updateExternalMediaStatus(boolean z2, boolean z3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!z3) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(124, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean updateIntentVerificationStatus(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(140, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void updatePackagesIfNeeded() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(114, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void updatePermissionFlags(String str, String str2, int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void updatePermissionFlagsForAllApps(int i2, int i3, int i4) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void verifyIntentFilter(int i2, int i3, List<String> list) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStringList(list);
                    this.mRemote.transact(138, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void verifyPendingInstall(int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(136, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPackageManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPackageManager)) ? new Proxy(iBinder) : (IPackageManager) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    checkPackageStartable(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPackageAvailable = isPackageAvailable(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPackageAvailable ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    PackageInfo packageInfo = getPackageInfo(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (packageInfo != null) {
                        parcel2.writeInt(1);
                        packageInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    PackageInfo packageInfoVersioned = getPackageInfoVersioned(parcel.readInt() != 0 ? VersionedPackage.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (packageInfoVersioned != null) {
                        parcel2.writeInt(1);
                        packageInfoVersioned.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int packageUid = getPackageUid(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(packageUid);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] packageGids = getPackageGids(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(packageGids);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] strArrCurrentToCanonicalPackageNames = currentToCanonicalPackageNames(parcel.createStringArray());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(strArrCurrentToCanonicalPackageNames);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] strArrCanonicalToCurrentPackageNames = canonicalToCurrentPackageNames(parcel.createStringArray());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(strArrCanonicalToCurrentPackageNames);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    PermissionInfo permissionInfo = getPermissionInfo(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (permissionInfo != null) {
                        parcel2.writeInt(1);
                        permissionInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice parceledListSliceQueryPermissionsByGroup = queryPermissionsByGroup(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (parceledListSliceQueryPermissionsByGroup != null) {
                        parcel2.writeInt(1);
                        parceledListSliceQueryPermissionsByGroup.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    PermissionGroupInfo permissionGroupInfo = getPermissionGroupInfo(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (permissionGroupInfo != null) {
                        parcel2.writeInt(1);
                        permissionGroupInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice allPermissionGroups = getAllPermissionGroups(parcel.readInt());
                    parcel2.writeNoException();
                    if (allPermissionGroups != null) {
                        parcel2.writeInt(1);
                        allPermissionGroups.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    ApplicationInfo applicationInfo = getApplicationInfo(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (applicationInfo != null) {
                        parcel2.writeInt(1);
                        applicationInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityInfo activityInfo = getActivityInfo(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (activityInfo != null) {
                        parcel2.writeInt(1);
                        activityInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zActivitySupportsIntent = activitySupportsIntent(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zActivitySupportsIntent ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    ActivityInfo receiverInfo = getReceiverInfo(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (receiverInfo != null) {
                        parcel2.writeInt(1);
                        receiverInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    ServiceInfo serviceInfo = getServiceInfo(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (serviceInfo != null) {
                        parcel2.writeInt(1);
                        serviceInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    ProviderInfo providerInfo = getProviderInfo(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (providerInfo != null) {
                        parcel2.writeInt(1);
                        providerInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckPermission = checkPermission(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckPermission);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckUidPermission = checkUidPermission(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckUidPermission);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddPermission = addPermission(parcel.readInt() != 0 ? PermissionInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddPermission ? 1 : 0);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    removePermission(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    grantRuntimePermission(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    revokeRuntimePermission(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetRuntimePermissions();
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    int permissionFlags = getPermissionFlags(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(permissionFlags);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    updatePermissionFlags(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    updatePermissionFlagsForAllApps(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShouldShowRequestPermissionRationale = shouldShowRequestPermissionRationale(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zShouldShowRequestPermissionRationale ? 1 : 0);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsProtectedBroadcast = isProtectedBroadcast(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsProtectedBroadcast ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckSignatures = checkSignatures(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckSignatures);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckUidSignatures = checkUidSignatures(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckUidSignatures);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> allPackages = getAllPackages();
                    parcel2.writeNoException();
                    parcel2.writeStringList(allPackages);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] packagesForUid = getPackagesForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(packagesForUid);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    String nameForUid = getNameForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(nameForUid);
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] namesForUids = getNamesForUids(parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(namesForUids);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    int uidForSharedUser = getUidForSharedUser(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(uidForSharedUser);
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    int flagsForUid = getFlagsForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(flagsForUid);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    int privateFlagsForUid = getPrivateFlagsForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(privateFlagsForUid);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsUidPrivileged = isUidPrivileged(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsUidPrivileged ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] appOpPermissionPackages = getAppOpPermissionPackages(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(appOpPermissionPackages);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    ResolveInfo resolveInfoResolveIntent = resolveIntent(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (resolveInfoResolveIntent != null) {
                        parcel2.writeInt(1);
                        resolveInfoResolveIntent.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    ResolveInfo resolveInfoFindPersistentPreferredActivity = findPersistentPreferredActivity(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (resolveInfoFindPersistentPreferredActivity != null) {
                        parcel2.writeInt(1);
                        resolveInfoFindPersistentPreferredActivity.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCanForwardTo = canForwardTo(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCanForwardTo ? 1 : 0);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice parceledListSliceQueryIntentActivities = queryIntentActivities(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (parceledListSliceQueryIntentActivities != null) {
                        parcel2.writeInt(1);
                        parceledListSliceQueryIntentActivities.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName componentNameCreateFromParcel = parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null;
                    Parcelable.Creator<Intent> creator = Intent.CREATOR;
                    ParceledListSlice parceledListSliceQueryIntentActivityOptions = queryIntentActivityOptions(componentNameCreateFromParcel, (Intent[]) parcel.createTypedArray(creator), parcel.createStringArray(), parcel.readInt() != 0 ? creator.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (parceledListSliceQueryIntentActivityOptions != null) {
                        parcel2.writeInt(1);
                        parceledListSliceQueryIntentActivityOptions.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice parceledListSliceQueryIntentReceivers = queryIntentReceivers(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (parceledListSliceQueryIntentReceivers != null) {
                        parcel2.writeInt(1);
                        parceledListSliceQueryIntentReceivers.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    ResolveInfo resolveInfoResolveService = resolveService(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (resolveInfoResolveService != null) {
                        parcel2.writeInt(1);
                        resolveInfoResolveService.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice parceledListSliceQueryIntentServices = queryIntentServices(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (parceledListSliceQueryIntentServices != null) {
                        parcel2.writeInt(1);
                        parceledListSliceQueryIntentServices.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice parceledListSliceQueryIntentContentProviders = queryIntentContentProviders(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (parceledListSliceQueryIntentContentProviders != null) {
                        parcel2.writeInt(1);
                        parceledListSliceQueryIntentContentProviders.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice installedPackages = getInstalledPackages(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (installedPackages != null) {
                        parcel2.writeInt(1);
                        installedPackages.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice packagesHoldingPermissions = getPackagesHoldingPermissions(parcel.createStringArray(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (packagesHoldingPermissions != null) {
                        parcel2.writeInt(1);
                        packagesHoldingPermissions.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice installedApplications = getInstalledApplications(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (installedApplications != null) {
                        parcel2.writeInt(1);
                        installedApplications.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice persistentApplications = getPersistentApplications(parcel.readInt());
                    parcel2.writeNoException();
                    if (persistentApplications != null) {
                        parcel2.writeInt(1);
                        persistentApplications.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    ProviderInfo providerInfoResolveContentProvider = resolveContentProvider(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (providerInfoResolveContentProvider != null) {
                        parcel2.writeInt(1);
                        providerInfoResolveContentProvider.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                    ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(ProviderInfo.CREATOR);
                    querySyncProviders(arrayListCreateStringArrayList, arrayListCreateTypedArrayList);
                    parcel2.writeNoException();
                    parcel2.writeStringList(arrayListCreateStringArrayList);
                    parcel2.writeTypedList(arrayListCreateTypedArrayList);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice parceledListSliceQueryContentProviders = queryContentProviders(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    if (parceledListSliceQueryContentProviders != null) {
                        parcel2.writeInt(1);
                        parceledListSliceQueryContentProviders.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    InstrumentationInfo instrumentationInfo = getInstrumentationInfo(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (instrumentationInfo != null) {
                        parcel2.writeInt(1);
                        instrumentationInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice parceledListSliceQueryInstrumentation = queryInstrumentation(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (parceledListSliceQueryInstrumentation != null) {
                        parcel2.writeInt(1);
                        parceledListSliceQueryInstrumentation.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    installPackageAsUser(parcel.readString(), IPackageInstallObserver2.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishPackageInstall(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInstallerPackageName(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    setApplicationCategoryHint(parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    deletePackageAsUser(parcel.readString(), parcel.readInt(), IPackageDeleteObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    deletePackageVersioned(parcel.readInt() != 0 ? VersionedPackage.CREATOR.createFromParcel(parcel) : null, IPackageDeleteObserver2.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    String installerPackageName = getInstallerPackageName(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(installerPackageName);
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetApplicationPreferences(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    ResolveInfo lastChosenActivity = getLastChosenActivity(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (lastChosenActivity != null) {
                        parcel2.writeInt(1);
                        lastChosenActivity.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLastChosenActivity(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    IntentFilter intentFilterCreateFromParcel = parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null;
                    int i4 = parcel.readInt();
                    Parcelable.Creator<ComponentName> creator2 = ComponentName.CREATOR;
                    addPreferredActivity(intentFilterCreateFromParcel, i4, (ComponentName[]) parcel.createTypedArray(creator2), parcel.readInt() != 0 ? creator2.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    IntentFilter intentFilterCreateFromParcel2 = parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null;
                    int i5 = parcel.readInt();
                    Parcelable.Creator<ComponentName> creator3 = ComponentName.CREATOR;
                    replacePreferredActivity(intentFilterCreateFromParcel2, i5, (ComponentName[]) parcel.createTypedArray(creator3), parcel.readInt() != 0 ? creator3.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearPackagePreferredActivities(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    int preferredActivities = getPreferredActivities(arrayList, arrayList2, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(preferredActivities);
                    parcel2.writeTypedList(arrayList);
                    parcel2.writeTypedList(arrayList2);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPersistentPreferredActivity(parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearPackagePersistentPreferredActivities(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    addCrossProfileIntentFilter(parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearCrossProfileIntentFilters(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] packagesSuspendedAsUser = setPackagesSuspendedAsUser(parcel.createStringArray(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(packagesSuspendedAsUser);
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPackageSuspendedForUser = isPackageSuspendedForUser(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPackageSuspendedForUser ? 1 : 0);
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] preferredActivityBackup = getPreferredActivityBackup(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(preferredActivityBackup);
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    restorePreferredActivities(parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] defaultAppsBackup = getDefaultAppsBackup(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(defaultAppsBackup);
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    restoreDefaultApps(parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] intentFilterVerificationBackup = getIntentFilterVerificationBackup(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(intentFilterVerificationBackup);
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    restoreIntentFilterVerification(parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] permissionGrantBackup = getPermissionGrantBackup(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(permissionGrantBackup);
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    restorePermissionGrants(parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    ArrayList arrayList3 = new ArrayList();
                    ComponentName homeActivities = getHomeActivities(arrayList3);
                    parcel2.writeNoException();
                    if (homeActivities != null) {
                        parcel2.writeInt(1);
                        homeActivities.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    parcel2.writeTypedList(arrayList3);
                    return true;
                case 89:
                    parcel.enforceInterface(DESCRIPTOR);
                    setHomeActivity(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 90:
                    parcel.enforceInterface(DESCRIPTOR);
                    setComponentEnabledSetting(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 91:
                    parcel.enforceInterface(DESCRIPTOR);
                    setComponentEnabledSettingForSetupMenu(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 92:
                    parcel.enforceInterface(DESCRIPTOR);
                    setComponentEnabledSettingForSpecific(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 93:
                    parcel.enforceInterface(DESCRIPTOR);
                    int componentEnabledSetting = getComponentEnabledSetting(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(componentEnabledSetting);
                    return true;
                case 94:
                    parcel.enforceInterface(DESCRIPTOR);
                    setApplicationEnabledSetting(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 95:
                    parcel.enforceInterface(DESCRIPTOR);
                    int applicationEnabledSetting = getApplicationEnabledSetting(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(applicationEnabledSetting);
                    return true;
                case 96:
                    parcel.enforceInterface(DESCRIPTOR);
                    logAppProcessStartIfNeeded(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 97:
                    parcel.enforceInterface(DESCRIPTOR);
                    flushPackageRestrictionsAsUser(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 98:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPackageStoppedState(parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 99:
                    parcel.enforceInterface(DESCRIPTOR);
                    freeStorageAndNotify(parcel.readString(), parcel.readLong(), parcel.readInt(), IPackageDataObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 100:
                    parcel.enforceInterface(DESCRIPTOR);
                    freeStorage(parcel.readString(), parcel.readLong(), parcel.readInt(), parcel.readInt() != 0 ? IntentSender.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 101:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteApplicationCacheFiles(parcel.readString(), IPackageDataObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 102:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteApplicationCacheFilesAsUser(parcel.readString(), parcel.readInt(), IPackageDataObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 103:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearApplicationUserData(parcel.readString(), IPackageDataObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 104:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearApplicationProfileData(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 105:
                    parcel.enforceInterface(DESCRIPTOR);
                    getPackageSizeInfo(parcel.readString(), parcel.readInt(), IPackageStatsObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 106:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] systemSharedLibraryNames = getSystemSharedLibraryNames();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(systemSharedLibraryNames);
                    return true;
                case 107:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice systemAvailableFeatures = getSystemAvailableFeatures();
                    parcel2.writeNoException();
                    if (systemAvailableFeatures != null) {
                        parcel2.writeInt(1);
                        systemAvailableFeatures.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 108:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasSystemFeature = hasSystemFeature(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasSystemFeature ? 1 : 0);
                    return true;
                case 109:
                    parcel.enforceInterface(DESCRIPTOR);
                    enterSafeMode();
                    parcel2.writeNoException();
                    return true;
                case 110:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSafeMode = isSafeMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSafeMode ? 1 : 0);
                    return true;
                case 111:
                    parcel.enforceInterface(DESCRIPTOR);
                    systemReady();
                    parcel2.writeNoException();
                    return true;
                case 112:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasSystemUidErrors = hasSystemUidErrors();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasSystemUidErrors ? 1 : 0);
                    return true;
                case 113:
                    parcel.enforceInterface(DESCRIPTOR);
                    performFstrimIfNeeded();
                    parcel2.writeNoException();
                    return true;
                case 114:
                    parcel.enforceInterface(DESCRIPTOR);
                    updatePackagesIfNeeded();
                    parcel2.writeNoException();
                    return true;
                case 115:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyPackageUse(parcel.readString(), parcel.readInt());
                    return true;
                case 116:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyDexLoad(parcel.readString(), parcel.createStringArrayList(), parcel.createStringArrayList(), parcel.readString());
                    return true;
                case 117:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDexModule(parcel.readString(), parcel.readString(), parcel.readInt() != 0, IDexModuleRegisterCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 118:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPerformDexOptMode = performDexOptMode(parcel.readString(), parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zPerformDexOptMode ? 1 : 0);
                    return true;
                case 119:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPerformDexOptSecondary = performDexOptSecondary(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zPerformDexOptSecondary ? 1 : 0);
                    return true;
                case 120:
                    parcel.enforceInterface(DESCRIPTOR);
                    dumpProfiles(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 121:
                    parcel.enforceInterface(DESCRIPTOR);
                    forceDexOpt(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 122:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRunBackgroundDexoptJob = runBackgroundDexoptJob();
                    parcel2.writeNoException();
                    parcel2.writeInt(zRunBackgroundDexoptJob ? 1 : 0);
                    return true;
                case 123:
                    parcel.enforceInterface(DESCRIPTOR);
                    reconcileSecondaryDexFiles(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 124:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateExternalMediaStatus(parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 125:
                    parcel.enforceInterface(DESCRIPTOR);
                    PackageCleanItem packageCleanItemNextPackageToClean = nextPackageToClean(parcel.readInt() != 0 ? PackageCleanItem.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (packageCleanItemNextPackageToClean != null) {
                        parcel2.writeInt(1);
                        packageCleanItemNextPackageToClean.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 126:
                    parcel.enforceInterface(DESCRIPTOR);
                    int moveStatus = getMoveStatus(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(moveStatus);
                    return true;
                case 127:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMoveCallback(IPackageMoveObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 128:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMoveCallback(IPackageMoveObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 129:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iMovePackage = movePackage(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iMovePackage);
                    return true;
                case 130:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iMovePrimaryStorage = movePrimaryStorage(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iMovePrimaryStorage);
                    return true;
                case 131:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iMovePrimaryEmulatedStorage = movePrimaryEmulatedStorage(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iMovePrimaryEmulatedStorage);
                    return true;
                case 132:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddPermissionAsync = addPermissionAsync(parcel.readInt() != 0 ? PermissionInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddPermissionAsync ? 1 : 0);
                    return true;
                case 133:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean installLocation = setInstallLocation(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(installLocation ? 1 : 0);
                    return true;
                case 134:
                    parcel.enforceInterface(DESCRIPTOR);
                    int installLocation2 = getInstallLocation();
                    parcel2.writeNoException();
                    parcel2.writeInt(installLocation2);
                    return true;
                case 135:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iInstallExistingPackageAsUser = installExistingPackageAsUser(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iInstallExistingPackageAsUser);
                    return true;
                case 136:
                    parcel.enforceInterface(DESCRIPTOR);
                    verifyPendingInstall(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 137:
                    parcel.enforceInterface(DESCRIPTOR);
                    extendVerificationTimeout(parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 138:
                    parcel.enforceInterface(DESCRIPTOR);
                    verifyIntentFilter(parcel.readInt(), parcel.readInt(), parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 139:
                    parcel.enforceInterface(DESCRIPTOR);
                    int intentVerificationStatus = getIntentVerificationStatus(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(intentVerificationStatus);
                    return true;
                case 140:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUpdateIntentVerificationStatus = updateIntentVerificationStatus(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zUpdateIntentVerificationStatus ? 1 : 0);
                    return true;
                case 141:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice intentFilterVerifications = getIntentFilterVerifications(parcel.readString());
                    parcel2.writeNoException();
                    if (intentFilterVerifications != null) {
                        parcel2.writeInt(1);
                        intentFilterVerifications.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 142:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice allIntentFilters = getAllIntentFilters(parcel.readString());
                    parcel2.writeNoException();
                    if (allIntentFilters != null) {
                        parcel2.writeInt(1);
                        allIntentFilters.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 143:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean defaultBrowserPackageName = setDefaultBrowserPackageName(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(defaultBrowserPackageName ? 1 : 0);
                    return true;
                case 144:
                    parcel.enforceInterface(DESCRIPTOR);
                    String defaultBrowserPackageName2 = getDefaultBrowserPackageName(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(defaultBrowserPackageName2);
                    return true;
                case 145:
                    parcel.enforceInterface(DESCRIPTOR);
                    VerifierDeviceIdentity verifierDeviceIdentity = getVerifierDeviceIdentity();
                    parcel2.writeNoException();
                    if (verifierDeviceIdentity != null) {
                        parcel2.writeInt(1);
                        verifierDeviceIdentity.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 146:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsFirstBoot = isFirstBoot();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsFirstBoot ? 1 : 0);
                    return true;
                case 147:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsOnlyCoreApps = isOnlyCoreApps();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsOnlyCoreApps ? 1 : 0);
                    return true;
                case 148:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsUpgrade = isUpgrade();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsUpgrade ? 1 : 0);
                    return true;
                case 149:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPermissionEnforced(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 150:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPermissionEnforced = isPermissionEnforced(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPermissionEnforced ? 1 : 0);
                    return true;
                case 151:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsStorageLow = isStorageLow();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsStorageLow ? 1 : 0);
                    return true;
                case 152:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean applicationHiddenSettingAsUser = setApplicationHiddenSettingAsUser(parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(applicationHiddenSettingAsUser ? 1 : 0);
                    return true;
                case 153:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean applicationHiddenSettingAsUser2 = getApplicationHiddenSettingAsUser(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(applicationHiddenSettingAsUser2 ? 1 : 0);
                    return true;
                case 154:
                    parcel.enforceInterface(DESCRIPTOR);
                    IPackageInstaller packageInstaller = getPackageInstaller();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(packageInstaller != null ? packageInstaller.asBinder() : null);
                    return true;
                case 155:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean blockUninstallForUser = setBlockUninstallForUser(parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(blockUninstallForUser ? 1 : 0);
                    return true;
                case 156:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean blockUninstallForUser2 = getBlockUninstallForUser(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(blockUninstallForUser2 ? 1 : 0);
                    return true;
                case 157:
                    parcel.enforceInterface(DESCRIPTOR);
                    KeySet keySetByAlias = getKeySetByAlias(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (keySetByAlias != null) {
                        parcel2.writeInt(1);
                        keySetByAlias.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 158:
                    parcel.enforceInterface(DESCRIPTOR);
                    KeySet signingKeySet = getSigningKeySet(parcel.readString());
                    parcel2.writeNoException();
                    if (signingKeySet != null) {
                        parcel2.writeInt(1);
                        signingKeySet.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 159:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPackageSignedByKeySet = isPackageSignedByKeySet(parcel.readString(), parcel.readInt() != 0 ? KeySet.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPackageSignedByKeySet ? 1 : 0);
                    return true;
                case 160:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPackageSignedByKeySetExactly = isPackageSignedByKeySetExactly(parcel.readString(), parcel.readInt() != 0 ? KeySet.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPackageSignedByKeySetExactly ? 1 : 0);
                    return true;
                case 161:
                    parcel.enforceInterface(DESCRIPTOR);
                    addOnPermissionsChangeListener(IOnPermissionsChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 162:
                    parcel.enforceInterface(DESCRIPTOR);
                    removeOnPermissionsChangeListener(IOnPermissionsChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 163:
                    parcel.enforceInterface(DESCRIPTOR);
                    grantDefaultPermissionsToEnabledCarrierApps(parcel.createStringArray(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 164:
                    parcel.enforceInterface(DESCRIPTOR);
                    grantDefaultPermissionsToEnabledImsServices(parcel.createStringArray(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 165:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPermissionRevokedByPolicy = isPermissionRevokedByPolicy(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPermissionRevokedByPolicy ? 1 : 0);
                    return true;
                case 166:
                    parcel.enforceInterface(DESCRIPTOR);
                    String permissionControllerPackageName = getPermissionControllerPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(permissionControllerPackageName);
                    return true;
                case 167:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice instantApps = getInstantApps(parcel.readInt());
                    parcel2.writeNoException();
                    if (instantApps != null) {
                        parcel2.writeInt(1);
                        instantApps.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 168:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] instantAppCookie = getInstantAppCookie(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(instantAppCookie);
                    return true;
                case 169:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean instantAppCookie2 = setInstantAppCookie(parcel.readString(), parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(instantAppCookie2 ? 1 : 0);
                    return true;
                case 170:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bitmap instantAppIcon = getInstantAppIcon(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (instantAppIcon != null) {
                        parcel2.writeInt(1);
                        instantAppIcon.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 171:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsInstantApp = isInstantApp(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsInstantApp ? 1 : 0);
                    return true;
                case 172:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean requiredForSystemUser = setRequiredForSystemUser(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(requiredForSystemUser ? 1 : 0);
                    return true;
                case 173:
                    parcel.enforceInterface(DESCRIPTOR);
                    setUpdateAvailable(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 174:
                    parcel.enforceInterface(DESCRIPTOR);
                    String servicesSystemSharedLibraryPackageName = getServicesSystemSharedLibraryPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(servicesSystemSharedLibraryPackageName);
                    return true;
                case 175:
                    parcel.enforceInterface(DESCRIPTOR);
                    String sharedSystemSharedLibraryPackageName = getSharedSystemSharedLibraryPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(sharedSystemSharedLibraryPackageName);
                    return true;
                case 176:
                    parcel.enforceInterface(DESCRIPTOR);
                    ChangedPackages changedPackages = getChangedPackages(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (changedPackages != null) {
                        parcel2.writeInt(1);
                        changedPackages.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 177:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPackageDeviceAdminOnAnyUser = isPackageDeviceAdminOnAnyUser(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPackageDeviceAdminOnAnyUser ? 1 : 0);
                    return true;
                case 178:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> previousCodePaths = getPreviousCodePaths(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStringList(previousCodePaths);
                    return true;
                case 179:
                    parcel.enforceInterface(DESCRIPTOR);
                    int installReason = getInstallReason(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(installReason);
                    return true;
                case 180:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice sharedLibraries = getSharedLibraries(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (sharedLibraries != null) {
                        parcel2.writeInt(1);
                        sharedLibraries.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 181:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCanRequestPackageInstalls = canRequestPackageInstalls(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCanRequestPackageInstalls ? 1 : 0);
                    return true;
                case 182:
                    parcel.enforceInterface(DESCRIPTOR);
                    deletePreloadsFileCache();
                    parcel2.writeNoException();
                    return true;
                case 183:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName instantAppResolverComponent = getInstantAppResolverComponent();
                    parcel2.writeNoException();
                    if (instantAppResolverComponent != null) {
                        parcel2.writeInt(1);
                        instantAppResolverComponent.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 184:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName instantAppResolverSettingsComponent = getInstantAppResolverSettingsComponent();
                    parcel2.writeNoException();
                    if (instantAppResolverSettingsComponent != null) {
                        parcel2.writeInt(1);
                        instantAppResolverSettingsComponent.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 185:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName instantAppInstallerComponent = getInstantAppInstallerComponent();
                    parcel2.writeNoException();
                    if (instantAppInstallerComponent != null) {
                        parcel2.writeInt(1);
                        instantAppInstallerComponent.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 186:
                    parcel.enforceInterface(DESCRIPTOR);
                    String instantAppAndroidId = getInstantAppAndroidId(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(instantAppAndroidId);
                    return true;
                case 187:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCopyFileToDir = copyFileToDir(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCopyFileToDir);
                    return true;
                case 188:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iBackupAppData = backupAppData(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iBackupAppData);
                    return true;
                case 189:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iRestoreAppData = restoreAppData(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iRestoreAppData);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    boolean activitySupportsIntent(ComponentName componentName, Intent intent, String str);

    void addCrossProfileIntentFilter(IntentFilter intentFilter, String str, int i2, int i3, int i4);

    void addOnPermissionsChangeListener(IOnPermissionsChangeListener iOnPermissionsChangeListener);

    boolean addPermission(PermissionInfo permissionInfo);

    boolean addPermissionAsync(PermissionInfo permissionInfo);

    void addPersistentPreferredActivity(IntentFilter intentFilter, ComponentName componentName, int i2);

    void addPreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName, int i3);

    int backupAppData(String str, String str2);

    boolean canForwardTo(Intent intent, String str, int i2, int i3);

    boolean canRequestPackageInstalls(String str, int i2);

    String[] canonicalToCurrentPackageNames(String[] strArr);

    void checkPackageStartable(String str, int i2);

    int checkPermission(String str, String str2, int i2);

    int checkSignatures(String str, String str2);

    int checkUidPermission(String str, int i2);

    int checkUidSignatures(int i2, int i3);

    void clearApplicationProfileData(String str);

    void clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver, int i2);

    void clearCrossProfileIntentFilters(int i2, String str);

    void clearPackagePersistentPreferredActivities(String str, int i2);

    void clearPackagePreferredActivities(String str);

    int copyFileToDir(String str, String str2, String str3, String str4, int i2);

    String[] currentToCanonicalPackageNames(String[] strArr);

    void deleteApplicationCacheFiles(String str, IPackageDataObserver iPackageDataObserver);

    void deleteApplicationCacheFilesAsUser(String str, int i2, IPackageDataObserver iPackageDataObserver);

    void deletePackageAsUser(String str, int i2, IPackageDeleteObserver iPackageDeleteObserver, int i3, int i4);

    void deletePackageVersioned(VersionedPackage versionedPackage, IPackageDeleteObserver2 iPackageDeleteObserver2, int i2, int i3);

    void deletePreloadsFileCache();

    void dumpProfiles(String str);

    void enterSafeMode();

    void extendVerificationTimeout(int i2, int i3, long j2);

    ResolveInfo findPersistentPreferredActivity(Intent intent, int i2);

    void finishPackageInstall(int i2, boolean z2);

    void flushPackageRestrictionsAsUser(int i2);

    void forceDexOpt(String str);

    void freeStorage(String str, long j2, int i2, IntentSender intentSender);

    void freeStorageAndNotify(String str, long j2, int i2, IPackageDataObserver iPackageDataObserver);

    ActivityInfo getActivityInfo(ComponentName componentName, int i2, int i3);

    ParceledListSlice getAllIntentFilters(String str);

    List<String> getAllPackages();

    ParceledListSlice getAllPermissionGroups(int i2);

    String[] getAppOpPermissionPackages(String str);

    int getApplicationEnabledSetting(String str, int i2);

    boolean getApplicationHiddenSettingAsUser(String str, int i2);

    ApplicationInfo getApplicationInfo(String str, int i2, int i3);

    boolean getBlockUninstallForUser(String str, int i2);

    ChangedPackages getChangedPackages(int i2, int i3);

    int getComponentEnabledSetting(ComponentName componentName, int i2);

    byte[] getDefaultAppsBackup(int i2);

    String getDefaultBrowserPackageName(int i2);

    int getFlagsForUid(int i2);

    ComponentName getHomeActivities(List<ResolveInfo> list);

    int getInstallLocation();

    int getInstallReason(String str, int i2);

    ParceledListSlice getInstalledApplications(int i2, int i3);

    ParceledListSlice getInstalledPackages(int i2, int i3);

    String getInstallerPackageName(String str);

    String getInstantAppAndroidId(String str, int i2);

    byte[] getInstantAppCookie(String str, int i2);

    Bitmap getInstantAppIcon(String str, int i2);

    ComponentName getInstantAppInstallerComponent();

    ComponentName getInstantAppResolverComponent();

    ComponentName getInstantAppResolverSettingsComponent();

    ParceledListSlice getInstantApps(int i2);

    InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i2);

    byte[] getIntentFilterVerificationBackup(int i2);

    ParceledListSlice getIntentFilterVerifications(String str);

    int getIntentVerificationStatus(String str, int i2);

    KeySet getKeySetByAlias(String str, String str2);

    ResolveInfo getLastChosenActivity(Intent intent, String str, int i2);

    int getMoveStatus(int i2);

    String getNameForUid(int i2);

    String[] getNamesForUids(int[] iArr);

    int[] getPackageGids(String str, int i2, int i3);

    PackageInfo getPackageInfo(String str, int i2, int i3);

    PackageInfo getPackageInfoVersioned(VersionedPackage versionedPackage, int i2, int i3);

    IPackageInstaller getPackageInstaller();

    void getPackageSizeInfo(String str, int i2, IPackageStatsObserver iPackageStatsObserver);

    int getPackageUid(String str, int i2, int i3);

    String[] getPackagesForUid(int i2);

    ParceledListSlice getPackagesHoldingPermissions(String[] strArr, int i2, int i3);

    String getPermissionControllerPackageName();

    int getPermissionFlags(String str, String str2, int i2);

    byte[] getPermissionGrantBackup(int i2);

    PermissionGroupInfo getPermissionGroupInfo(String str, int i2);

    PermissionInfo getPermissionInfo(String str, String str2, int i2);

    ParceledListSlice getPersistentApplications(int i2);

    int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str);

    byte[] getPreferredActivityBackup(int i2);

    List<String> getPreviousCodePaths(String str);

    int getPrivateFlagsForUid(int i2);

    ProviderInfo getProviderInfo(ComponentName componentName, int i2, int i3);

    ActivityInfo getReceiverInfo(ComponentName componentName, int i2, int i3);

    ServiceInfo getServiceInfo(ComponentName componentName, int i2, int i3);

    String getServicesSystemSharedLibraryPackageName();

    ParceledListSlice getSharedLibraries(String str, int i2, int i3);

    String getSharedSystemSharedLibraryPackageName();

    KeySet getSigningKeySet(String str);

    ParceledListSlice getSystemAvailableFeatures();

    String[] getSystemSharedLibraryNames();

    int getUidForSharedUser(String str);

    VerifierDeviceIdentity getVerifierDeviceIdentity();

    void grantDefaultPermissionsToEnabledCarrierApps(String[] strArr, int i2);

    void grantDefaultPermissionsToEnabledImsServices(String[] strArr, int i2);

    void grantRuntimePermission(String str, String str2, int i2);

    boolean hasSystemFeature(String str, int i2);

    boolean hasSystemUidErrors();

    int installExistingPackageAsUser(String str, int i2, int i3, int i4);

    void installPackageAsUser(String str, IPackageInstallObserver2 iPackageInstallObserver2, int i2, String str2, int i3);

    boolean isFirstBoot();

    boolean isInstantApp(String str, int i2);

    boolean isOnlyCoreApps();

    boolean isPackageAvailable(String str, int i2);

    boolean isPackageDeviceAdminOnAnyUser(String str);

    boolean isPackageSignedByKeySet(String str, KeySet keySet);

    boolean isPackageSignedByKeySetExactly(String str, KeySet keySet);

    boolean isPackageSuspendedForUser(String str, int i2);

    boolean isPermissionEnforced(String str);

    boolean isPermissionRevokedByPolicy(String str, String str2, int i2);

    boolean isProtectedBroadcast(String str);

    boolean isSafeMode();

    boolean isStorageLow();

    boolean isUidPrivileged(int i2);

    boolean isUpgrade();

    void logAppProcessStartIfNeeded(String str, int i2, String str2, String str3, int i3);

    int movePackage(String str, String str2);

    int movePrimaryEmulatedStorage(String str);

    int movePrimaryStorage(String str);

    PackageCleanItem nextPackageToClean(PackageCleanItem packageCleanItem);

    void notifyDexLoad(String str, List<String> list, List<String> list2, String str2);

    void notifyPackageUse(String str, int i2);

    boolean performDexOptMode(String str, boolean z2, String str2, boolean z3, boolean z4, String str3);

    boolean performDexOptSecondary(String str, String str2, boolean z2);

    void performFstrimIfNeeded();

    ParceledListSlice queryContentProviders(String str, int i2, int i3, String str2);

    ParceledListSlice queryInstrumentation(String str, int i2);

    ParceledListSlice queryIntentActivities(Intent intent, String str, int i2, int i3);

    ParceledListSlice queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, String[] strArr, Intent intent, String str, int i2, int i3);

    ParceledListSlice queryIntentContentProviders(Intent intent, String str, int i2, int i3);

    ParceledListSlice queryIntentReceivers(Intent intent, String str, int i2, int i3);

    ParceledListSlice queryIntentServices(Intent intent, String str, int i2, int i3);

    ParceledListSlice queryPermissionsByGroup(String str, int i2);

    void querySyncProviders(List<String> list, List<ProviderInfo> list2);

    void reconcileSecondaryDexFiles(String str);

    void registerDexModule(String str, String str2, boolean z2, IDexModuleRegisterCallback iDexModuleRegisterCallback);

    void registerMoveCallback(IPackageMoveObserver iPackageMoveObserver);

    void removeOnPermissionsChangeListener(IOnPermissionsChangeListener iOnPermissionsChangeListener);

    void removePermission(String str);

    void replacePreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName, int i3);

    void resetApplicationPreferences(int i2);

    void resetRuntimePermissions();

    ProviderInfo resolveContentProvider(String str, int i2, int i3);

    ResolveInfo resolveIntent(Intent intent, String str, int i2, int i3);

    ResolveInfo resolveService(Intent intent, String str, int i2, int i3);

    int restoreAppData(String str, String str2);

    void restoreDefaultApps(byte[] bArr, int i2);

    void restoreIntentFilterVerification(byte[] bArr, int i2);

    void restorePermissionGrants(byte[] bArr, int i2);

    void restorePreferredActivities(byte[] bArr, int i2);

    void revokeRuntimePermission(String str, String str2, int i2);

    boolean runBackgroundDexoptJob();

    void setApplicationCategoryHint(String str, int i2, String str2);

    void setApplicationEnabledSetting(String str, int i2, int i3, int i4, String str2);

    boolean setApplicationHiddenSettingAsUser(String str, boolean z2, int i2);

    boolean setBlockUninstallForUser(String str, boolean z2, int i2);

    void setComponentEnabledSetting(ComponentName componentName, int i2, int i3, int i4);

    void setComponentEnabledSettingForSetupMenu(ComponentName componentName, int i2, int i3, Intent intent);

    void setComponentEnabledSettingForSpecific(ComponentName componentName, int i2, int i3, int i4, Intent intent);

    boolean setDefaultBrowserPackageName(String str, int i2);

    void setHomeActivity(ComponentName componentName, int i2);

    boolean setInstallLocation(int i2);

    void setInstallerPackageName(String str, String str2);

    boolean setInstantAppCookie(String str, byte[] bArr, int i2);

    void setLastChosenActivity(Intent intent, String str, int i2, IntentFilter intentFilter, int i3, ComponentName componentName);

    void setPackageStoppedState(String str, boolean z2, int i2);

    String[] setPackagesSuspendedAsUser(String[] strArr, boolean z2, int i2);

    void setPermissionEnforced(String str, boolean z2);

    boolean setRequiredForSystemUser(String str, boolean z2);

    void setUpdateAvailable(String str, boolean z2);

    boolean shouldShowRequestPermissionRationale(String str, String str2, int i2);

    void systemReady();

    void unregisterMoveCallback(IPackageMoveObserver iPackageMoveObserver);

    void updateExternalMediaStatus(boolean z2, boolean z3);

    boolean updateIntentVerificationStatus(String str, int i2, int i3);

    void updatePackagesIfNeeded();

    void updatePermissionFlags(String str, String str2, int i2, int i3, int i4);

    void updatePermissionFlagsForAllApps(int i2, int i3, int i4);

    void verifyIntentFilter(int i2, int i3, List<String> list);

    void verifyPendingInstall(int i2, int i3);
}
