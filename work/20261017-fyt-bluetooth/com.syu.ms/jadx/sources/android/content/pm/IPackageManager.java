package android.content.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
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
        public static final int TRANSACTION_addPackageToPreferred = 50;
        public static final int TRANSACTION_addPermission = 18;
        public static final int TRANSACTION_addPermissionAsync = 83;
        public static final int TRANSACTION_addPreferredActivity = 56;
        public static final int TRANSACTION_canonicalToCurrentPackageNames = 6;
        public static final int TRANSACTION_checkPermission = 16;
        public static final int TRANSACTION_checkSignatures = 23;
        public static final int TRANSACTION_checkUidPermission = 17;
        public static final int TRANSACTION_checkUidSignatures = 24;
        public static final int TRANSACTION_clearApplicationUserData = 69;
        public static final int TRANSACTION_clearPackagePreferredActivities = 58;
        public static final int TRANSACTION_currentToCanonicalPackageNames = 5;
        public static final int TRANSACTION_deleteApplicationCacheFiles = 68;
        public static final int TRANSACTION_deletePackageAsUser = 48;
        public static final int TRANSACTION_enterSafeMode = 74;
        public static final int TRANSACTION_extendVerificationTimeout = 90;
        public static final int TRANSACTION_finishPackageInstall = 46;
        public static final int TRANSACTION_freeStorage = 67;
        public static final int TRANSACTION_freeStorageAndNotify = 66;
        public static final int TRANSACTION_getActivityInfo = 12;
        public static final int TRANSACTION_getAllPermissionGroups = 10;
        public static final int TRANSACTION_getApplicationBlockedSettingAsUser = 98;
        public static final int TRANSACTION_getApplicationEnabledSetting = 64;
        public static final int TRANSACTION_getApplicationInfo = 11;
        public static final int TRANSACTION_getComponentEnabledSetting = 62;
        public static final int TRANSACTION_getFlagsForUid = 28;
        public static final int TRANSACTION_getHomeActivities = 60;
        public static final int TRANSACTION_getInstallLocation = 85;
        public static final int TRANSACTION_getInstalledApplications = 38;
        public static final int TRANSACTION_getInstalledPackages = 36;
        public static final int TRANSACTION_getInstallerPackageName = 49;
        public static final int TRANSACTION_getInstrumentationInfo = 43;
        public static final int TRANSACTION_getLastChosenActivity = 54;
        public static final int TRANSACTION_getNameForUid = 26;
        public static final int TRANSACTION_getPackageGids = 4;
        public static final int TRANSACTION_getPackageHardwareAccMode = 99;
        public static final int TRANSACTION_getPackageInfo = 2;
        public static final int TRANSACTION_getPackageSizeInfo = 70;
        public static final int TRANSACTION_getPackageUid = 3;
        public static final int TRANSACTION_getPackagesForUid = 25;
        public static final int TRANSACTION_getPackagesHoldingPermissions = 37;
        public static final int TRANSACTION_getPermissionGroupInfo = 9;
        public static final int TRANSACTION_getPermissionInfo = 7;
        public static final int TRANSACTION_getPersistentApplications = 39;
        public static final int TRANSACTION_getPreferredActivities = 59;
        public static final int TRANSACTION_getPreferredPackages = 52;
        public static final int TRANSACTION_getProviderInfo = 15;
        public static final int TRANSACTION_getReceiverInfo = 13;
        public static final int TRANSACTION_getServiceInfo = 14;
        public static final int TRANSACTION_getSystemAvailableFeatures = 72;
        public static final int TRANSACTION_getSystemSharedLibraryNames = 71;
        public static final int TRANSACTION_getUidForSharedUser = 27;
        public static final int TRANSACTION_getVerifierDeviceIdentity = 91;
        public static final int TRANSACTION_grantPermission = 20;
        public static final int TRANSACTION_hasSystemFeature = 73;
        public static final int TRANSACTION_hasSystemUidErrors = 77;
        public static final int TRANSACTION_installExistingPackageAsUser = 88;
        public static final int TRANSACTION_installPackage = 45;
        public static final int TRANSACTION_installPackageWithVerification = 86;
        public static final int TRANSACTION_installPackageWithVerificationAndEncryption = 87;
        public static final int TRANSACTION_isFirstBoot = 92;
        public static final int TRANSACTION_isOnlyCoreApps = 93;
        public static final int TRANSACTION_isPackageAvailable = 1;
        public static final int TRANSACTION_isPermissionEnforced = 95;
        public static final int TRANSACTION_isProtectedBroadcast = 22;
        public static final int TRANSACTION_isSafeMode = 75;
        public static final int TRANSACTION_isStorageLow = 96;
        public static final int TRANSACTION_movePackage = 82;
        public static final int TRANSACTION_nextPackageToClean = 81;
        public static final int TRANSACTION_performBootDexOpt = 78;
        public static final int TRANSACTION_performDexOpt = 79;
        public static final int TRANSACTION_queryContentProviders = 42;
        public static final int TRANSACTION_queryInstrumentation = 44;
        public static final int TRANSACTION_queryIntentActivities = 30;
        public static final int TRANSACTION_queryIntentActivityOptions = 31;
        public static final int TRANSACTION_queryIntentContentProviders = 35;
        public static final int TRANSACTION_queryIntentReceivers = 32;
        public static final int TRANSACTION_queryIntentServices = 34;
        public static final int TRANSACTION_queryPermissionsByGroup = 8;
        public static final int TRANSACTION_querySyncProviders = 41;
        public static final int TRANSACTION_removePackageFromPreferred = 51;
        public static final int TRANSACTION_removePermission = 19;
        public static final int TRANSACTION_replacePreferredActivity = 57;
        public static final int TRANSACTION_resetPreferredActivities = 53;
        public static final int TRANSACTION_resolveContentProvider = 40;
        public static final int TRANSACTION_resolveIntent = 29;
        public static final int TRANSACTION_resolveService = 33;
        public static final int TRANSACTION_revokePermission = 21;
        public static final int TRANSACTION_setApplicationBlockedSettingAsUser = 97;
        public static final int TRANSACTION_setApplicationEnabledSetting = 63;
        public static final int TRANSACTION_setComponentEnabledSetting = 61;
        public static final int TRANSACTION_setInstallLocation = 84;
        public static final int TRANSACTION_setInstallerPackageName = 47;
        public static final int TRANSACTION_setLastChosenActivity = 55;
        public static final int TRANSACTION_setPackageHardwareAccMode = 100;
        public static final int TRANSACTION_setPackageStoppedState = 65;
        public static final int TRANSACTION_setPermissionEnforced = 94;
        public static final int TRANSACTION_systemReady = 76;
        public static final int TRANSACTION_updateExternalMediaStatus = 80;
        public static final int TRANSACTION_verifyPendingInstall = 89;

        public static class Proxy implements IPackageManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.content.pm.IPackageManager
            public void addPackageToPreferred(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(83, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
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
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
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
            public String[] canonicalToCurrentPackageNames(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringArray(strArr);
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int checkPermission(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
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
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void deletePackageAsUser(String str, IPackageDeleteObserver iPackageDeleteObserver, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iPackageDeleteObserver != null ? iPackageDeleteObserver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(90, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void finishPackageInstall(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void freeStorage(long j2, IntentSender intentSender) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    if (intentSender != null) {
                        parcelObtain.writeInt(1);
                        intentSender.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(67, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void freeStorageAndNotify(long j2, IPackageDataObserver iPackageDataObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeStrongBinder(iPackageDataObserver != null ? iPackageDataObserver.asBinder() : null);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ActivityInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<PermissionGroupInfo> getAllPermissionGroups(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PermissionGroupInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean getApplicationBlockedSettingAsUser(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(98, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
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
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
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
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ApplicationInfo.CREATOR.createFromParcel(parcelObtain2) : null;
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
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
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
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(85, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
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
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? InstrumentationInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
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
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
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
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int[] getPackageGids(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createIntArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPackageHardwareAccMode(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(99, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
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
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PackageInfo.CREATOR.createFromParcel(parcelObtain2) : null;
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
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int getPackageUid(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
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
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PermissionGroupInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public PermissionInfo getPermissionInfo(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PermissionInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<ApplicationInfo> getPersistentApplications(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ApplicationInfo.CREATOR);
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
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
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
            public List<PackageInfo> getPreferredPackages(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PackageInfo.CREATOR);
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
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ServiceInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public FeatureInfo[] getSystemAvailableFeatures() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (FeatureInfo[]) parcelObtain2.createTypedArray(FeatureInfo.CREATOR);
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
                    this.mRemote.transact(71, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(91, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? VerifierDeviceIdentity.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void grantPermission(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean hasSystemFeature(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public int installExistingPackageAsUser(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(88, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void installPackage(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iPackageInstallObserver != null ? iPackageInstallObserver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void installPackageWithVerification(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str, Uri uri2, ManifestDigest manifestDigest, ContainerEncryptionParams containerEncryptionParams) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iPackageInstallObserver != null ? iPackageInstallObserver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (uri2 != null) {
                        parcelObtain.writeInt(1);
                        uri2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (manifestDigest != null) {
                        parcelObtain.writeInt(1);
                        manifestDigest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (containerEncryptionParams != null) {
                        parcelObtain.writeInt(1);
                        containerEncryptionParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(86, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void installPackageWithVerificationAndEncryption(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str, VerificationParams verificationParams, ContainerEncryptionParams containerEncryptionParams) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iPackageInstallObserver != null ? iPackageInstallObserver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (verificationParams != null) {
                        parcelObtain.writeInt(1);
                        verificationParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (containerEncryptionParams != null) {
                        parcelObtain.writeInt(1);
                        containerEncryptionParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(87, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(92, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(93, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(95, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(96, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void movePackage(String str, IPackageMoveObserver iPackageMoveObserver, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iPackageMoveObserver != null ? iPackageMoveObserver.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(82, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(81, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? PackageCleanItem.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void performBootDexOpt() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(78, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean performDexOpt(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(79, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<ProviderInfo> queryContentProviders(String str, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ProviderInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<InstrumentationInfo> queryInstrumentation(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(InstrumentationInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<ResolveInfo> queryIntentActivities(Intent intent, String str, int i2, int i3) {
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
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<ResolveInfo> queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, String[] strArr, Intent intent, String str, int i2, int i3) {
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
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<ResolveInfo> queryIntentContentProviders(Intent intent, String str, int i2, int i3) {
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
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<ResolveInfo> queryIntentReceivers(Intent intent, String str, int i2, int i3) {
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
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<ResolveInfo> queryIntentServices(Intent intent, String str, int i2, int i3) {
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
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ResolveInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public List<PermissionInfo> queryPermissionsByGroup(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PermissionInfo.CREATOR);
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
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.readStringList(list);
                    parcelObtain2.readTypedList(list2, ProviderInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void removePackageFromPreferred(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void replacePreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName) {
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
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void resetPreferredActivities(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ResolveInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void revokePermission(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public boolean setApplicationBlockedSettingAsUser(String str, boolean z2, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(97, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
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
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(84, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.content.pm.IPackageManager
            public void setPackageHardwareAccMode(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(100, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(94, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
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
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(80, parcelObtain, parcelObtain2, 0);
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
                    this.mRemote.transact(89, parcelObtain, parcelObtain2, 0);
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
                    boolean zIsPackageAvailable = isPackageAvailable(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPackageAvailable ? 1 : 0);
                    return true;
                case 2:
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
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int packageUid = getPackageUid(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(packageUid);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] packageGids = getPackageGids(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeIntArray(packageGids);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] strArrCurrentToCanonicalPackageNames = currentToCanonicalPackageNames(parcel.createStringArray());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(strArrCurrentToCanonicalPackageNames);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] strArrCanonicalToCurrentPackageNames = canonicalToCurrentPackageNames(parcel.createStringArray());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(strArrCanonicalToCurrentPackageNames);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    PermissionInfo permissionInfo = getPermissionInfo(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (permissionInfo != null) {
                        parcel2.writeInt(1);
                        permissionInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<PermissionInfo> listQueryPermissionsByGroup = queryPermissionsByGroup(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryPermissionsByGroup);
                    return true;
                case 9:
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
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<PermissionGroupInfo> allPermissionGroups = getAllPermissionGroups(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allPermissionGroups);
                    return true;
                case 11:
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
                case 12:
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
                case 13:
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
                case 14:
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
                case 15:
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
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckPermission = checkPermission(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckPermission);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckUidPermission = checkUidPermission(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckUidPermission);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddPermission = addPermission(parcel.readInt() != 0 ? PermissionInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddPermission ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    removePermission(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    grantPermission(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    revokePermission(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsProtectedBroadcast = isProtectedBroadcast(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsProtectedBroadcast ? 1 : 0);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckSignatures = checkSignatures(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckSignatures);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iCheckUidSignatures = checkUidSignatures(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iCheckUidSignatures);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] packagesForUid = getPackagesForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(packagesForUid);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    String nameForUid = getNameForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(nameForUid);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    int uidForSharedUser = getUidForSharedUser(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(uidForSharedUser);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    int flagsForUid = getFlagsForUid(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(flagsForUid);
                    return true;
                case 29:
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
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ResolveInfo> listQueryIntentActivities = queryIntentActivities(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentActivities);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    ComponentName componentNameCreateFromParcel = parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null;
                    Parcelable.Creator<Intent> creator = Intent.CREATOR;
                    List<ResolveInfo> listQueryIntentActivityOptions = queryIntentActivityOptions(componentNameCreateFromParcel, (Intent[]) parcel.createTypedArray(creator), parcel.createStringArray(), parcel.readInt() != 0 ? creator.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentActivityOptions);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ResolveInfo> listQueryIntentReceivers = queryIntentReceivers(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentReceivers);
                    return true;
                case 33:
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
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ResolveInfo> listQueryIntentServices = queryIntentServices(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentServices);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ResolveInfo> listQueryIntentContentProviders = queryIntentContentProviders(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryIntentContentProviders);
                    return true;
                case 36:
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
                case 37:
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
                case 38:
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
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ApplicationInfo> persistentApplications = getPersistentApplications(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(persistentApplications);
                    return true;
                case 40:
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
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                    ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(ProviderInfo.CREATOR);
                    querySyncProviders(arrayListCreateStringArrayList, arrayListCreateTypedArrayList);
                    parcel2.writeNoException();
                    parcel2.writeStringList(arrayListCreateStringArrayList);
                    parcel2.writeTypedList(arrayListCreateTypedArrayList);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ProviderInfo> listQueryContentProviders = queryContentProviders(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryContentProviders);
                    return true;
                case 43:
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
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<InstrumentationInfo> listQueryInstrumentation = queryInstrumentation(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQueryInstrumentation);
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    installPackage(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, IPackageInstallObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishPackageInstall(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInstallerPackageName(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    deletePackageAsUser(parcel.readString(), IPackageDeleteObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    String installerPackageName = getInstallerPackageName(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(installerPackageName);
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPackageToPreferred(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    removePackageFromPreferred(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<PackageInfo> preferredPackages = getPreferredPackages(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(preferredPackages);
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetPreferredActivities(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 54:
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
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLastChosenActivity(parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    IntentFilter intentFilterCreateFromParcel = parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null;
                    int i4 = parcel.readInt();
                    Parcelable.Creator<ComponentName> creator2 = ComponentName.CREATOR;
                    addPreferredActivity(intentFilterCreateFromParcel, i4, (ComponentName[]) parcel.createTypedArray(creator2), parcel.readInt() != 0 ? creator2.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    IntentFilter intentFilterCreateFromParcel2 = parcel.readInt() != 0 ? IntentFilter.CREATOR.createFromParcel(parcel) : null;
                    int i5 = parcel.readInt();
                    Parcelable.Creator<ComponentName> creator3 = ComponentName.CREATOR;
                    replacePreferredActivity(intentFilterCreateFromParcel2, i5, (ComponentName[]) parcel.createTypedArray(creator3), parcel.readInt() != 0 ? creator3.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearPackagePreferredActivities(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    int preferredActivities = getPreferredActivities(arrayList, arrayList2, parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(preferredActivities);
                    parcel2.writeTypedList(arrayList);
                    parcel2.writeTypedList(arrayList2);
                    return true;
                case 60:
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
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    setComponentEnabledSetting(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    int componentEnabledSetting = getComponentEnabledSetting(parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(componentEnabledSetting);
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    setApplicationEnabledSetting(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    int applicationEnabledSetting = getApplicationEnabledSetting(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(applicationEnabledSetting);
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPackageStoppedState(parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    freeStorageAndNotify(parcel.readLong(), IPackageDataObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    freeStorage(parcel.readLong(), parcel.readInt() != 0 ? IntentSender.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteApplicationCacheFiles(parcel.readString(), IPackageDataObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearApplicationUserData(parcel.readString(), IPackageDataObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    getPackageSizeInfo(parcel.readString(), parcel.readInt(), IPackageStatsObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] systemSharedLibraryNames = getSystemSharedLibraryNames();
                    parcel2.writeNoException();
                    parcel2.writeStringArray(systemSharedLibraryNames);
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    FeatureInfo[] systemAvailableFeatures = getSystemAvailableFeatures();
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(systemAvailableFeatures, 1);
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasSystemFeature = hasSystemFeature(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasSystemFeature ? 1 : 0);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    enterSafeMode();
                    parcel2.writeNoException();
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSafeMode = isSafeMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSafeMode ? 1 : 0);
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    systemReady();
                    parcel2.writeNoException();
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasSystemUidErrors = hasSystemUidErrors();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasSystemUidErrors ? 1 : 0);
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    performBootDexOpt();
                    parcel2.writeNoException();
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPerformDexOpt = performDexOpt(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zPerformDexOpt ? 1 : 0);
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateExternalMediaStatus(parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 81:
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
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    movePackage(parcel.readString(), IPackageMoveObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddPermissionAsync = addPermissionAsync(parcel.readInt() != 0 ? PermissionInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddPermissionAsync ? 1 : 0);
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean installLocation = setInstallLocation(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(installLocation ? 1 : 0);
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    int installLocation2 = getInstallLocation();
                    parcel2.writeNoException();
                    parcel2.writeInt(installLocation2);
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    installPackageWithVerification(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, IPackageInstallObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ManifestDigest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ContainerEncryptionParams.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    installPackageWithVerificationAndEncryption(parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null, IPackageInstallObserver.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? VerificationParams.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? ContainerEncryptionParams.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 88:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iInstallExistingPackageAsUser = installExistingPackageAsUser(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iInstallExistingPackageAsUser);
                    return true;
                case 89:
                    parcel.enforceInterface(DESCRIPTOR);
                    verifyPendingInstall(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 90:
                    parcel.enforceInterface(DESCRIPTOR);
                    extendVerificationTimeout(parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 91:
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
                case 92:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsFirstBoot = isFirstBoot();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsFirstBoot ? 1 : 0);
                    return true;
                case 93:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsOnlyCoreApps = isOnlyCoreApps();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsOnlyCoreApps ? 1 : 0);
                    return true;
                case 94:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPermissionEnforced(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 95:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPermissionEnforced = isPermissionEnforced(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPermissionEnforced ? 1 : 0);
                    return true;
                case 96:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsStorageLow = isStorageLow();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsStorageLow ? 1 : 0);
                    return true;
                case 97:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean applicationBlockedSettingAsUser = setApplicationBlockedSettingAsUser(parcel.readString(), parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(applicationBlockedSettingAsUser ? 1 : 0);
                    return true;
                case 98:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean applicationBlockedSettingAsUser2 = getApplicationBlockedSettingAsUser(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(applicationBlockedSettingAsUser2 ? 1 : 0);
                    return true;
                case 99:
                    parcel.enforceInterface(DESCRIPTOR);
                    int packageHardwareAccMode = getPackageHardwareAccMode(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(packageHardwareAccMode);
                    return true;
                case 100:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPackageHardwareAccMode(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void addPackageToPreferred(String str);

    boolean addPermission(PermissionInfo permissionInfo);

    boolean addPermissionAsync(PermissionInfo permissionInfo);

    void addPreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName, int i3);

    String[] canonicalToCurrentPackageNames(String[] strArr);

    int checkPermission(String str, String str2);

    int checkSignatures(String str, String str2);

    int checkUidPermission(String str, int i2);

    int checkUidSignatures(int i2, int i3);

    void clearApplicationUserData(String str, IPackageDataObserver iPackageDataObserver, int i2);

    void clearPackagePreferredActivities(String str);

    String[] currentToCanonicalPackageNames(String[] strArr);

    void deleteApplicationCacheFiles(String str, IPackageDataObserver iPackageDataObserver);

    void deletePackageAsUser(String str, IPackageDeleteObserver iPackageDeleteObserver, int i2, int i3);

    void enterSafeMode();

    void extendVerificationTimeout(int i2, int i3, long j2);

    void finishPackageInstall(int i2);

    void freeStorage(long j2, IntentSender intentSender);

    void freeStorageAndNotify(long j2, IPackageDataObserver iPackageDataObserver);

    ActivityInfo getActivityInfo(ComponentName componentName, int i2, int i3);

    List<PermissionGroupInfo> getAllPermissionGroups(int i2);

    boolean getApplicationBlockedSettingAsUser(String str, int i2);

    int getApplicationEnabledSetting(String str, int i2);

    ApplicationInfo getApplicationInfo(String str, int i2, int i3);

    int getComponentEnabledSetting(ComponentName componentName, int i2);

    int getFlagsForUid(int i2);

    ComponentName getHomeActivities(List<ResolveInfo> list);

    int getInstallLocation();

    ParceledListSlice getInstalledApplications(int i2, int i3);

    ParceledListSlice getInstalledPackages(int i2, int i3);

    String getInstallerPackageName(String str);

    InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i2);

    ResolveInfo getLastChosenActivity(Intent intent, String str, int i2);

    String getNameForUid(int i2);

    int[] getPackageGids(String str);

    int getPackageHardwareAccMode(String str);

    PackageInfo getPackageInfo(String str, int i2, int i3);

    void getPackageSizeInfo(String str, int i2, IPackageStatsObserver iPackageStatsObserver);

    int getPackageUid(String str, int i2);

    String[] getPackagesForUid(int i2);

    ParceledListSlice getPackagesHoldingPermissions(String[] strArr, int i2, int i3);

    PermissionGroupInfo getPermissionGroupInfo(String str, int i2);

    PermissionInfo getPermissionInfo(String str, int i2);

    List<ApplicationInfo> getPersistentApplications(int i2);

    int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str);

    List<PackageInfo> getPreferredPackages(int i2);

    ProviderInfo getProviderInfo(ComponentName componentName, int i2, int i3);

    ActivityInfo getReceiverInfo(ComponentName componentName, int i2, int i3);

    ServiceInfo getServiceInfo(ComponentName componentName, int i2, int i3);

    FeatureInfo[] getSystemAvailableFeatures();

    String[] getSystemSharedLibraryNames();

    int getUidForSharedUser(String str);

    VerifierDeviceIdentity getVerifierDeviceIdentity();

    void grantPermission(String str, String str2);

    boolean hasSystemFeature(String str);

    boolean hasSystemUidErrors();

    int installExistingPackageAsUser(String str, int i2);

    void installPackage(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str);

    void installPackageWithVerification(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str, Uri uri2, ManifestDigest manifestDigest, ContainerEncryptionParams containerEncryptionParams);

    void installPackageWithVerificationAndEncryption(Uri uri, IPackageInstallObserver iPackageInstallObserver, int i2, String str, VerificationParams verificationParams, ContainerEncryptionParams containerEncryptionParams);

    boolean isFirstBoot();

    boolean isOnlyCoreApps();

    boolean isPackageAvailable(String str, int i2);

    boolean isPermissionEnforced(String str);

    boolean isProtectedBroadcast(String str);

    boolean isSafeMode();

    boolean isStorageLow();

    void movePackage(String str, IPackageMoveObserver iPackageMoveObserver, int i2);

    PackageCleanItem nextPackageToClean(PackageCleanItem packageCleanItem);

    void performBootDexOpt();

    boolean performDexOpt(String str);

    List<ProviderInfo> queryContentProviders(String str, int i2, int i3);

    List<InstrumentationInfo> queryInstrumentation(String str, int i2);

    List<ResolveInfo> queryIntentActivities(Intent intent, String str, int i2, int i3);

    List<ResolveInfo> queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, String[] strArr, Intent intent, String str, int i2, int i3);

    List<ResolveInfo> queryIntentContentProviders(Intent intent, String str, int i2, int i3);

    List<ResolveInfo> queryIntentReceivers(Intent intent, String str, int i2, int i3);

    List<ResolveInfo> queryIntentServices(Intent intent, String str, int i2, int i3);

    List<PermissionInfo> queryPermissionsByGroup(String str, int i2);

    void querySyncProviders(List<String> list, List<ProviderInfo> list2);

    void removePackageFromPreferred(String str);

    void removePermission(String str);

    void replacePreferredActivity(IntentFilter intentFilter, int i2, ComponentName[] componentNameArr, ComponentName componentName);

    void resetPreferredActivities(int i2);

    ProviderInfo resolveContentProvider(String str, int i2, int i3);

    ResolveInfo resolveIntent(Intent intent, String str, int i2, int i3);

    ResolveInfo resolveService(Intent intent, String str, int i2, int i3);

    void revokePermission(String str, String str2);

    boolean setApplicationBlockedSettingAsUser(String str, boolean z2, int i2);

    void setApplicationEnabledSetting(String str, int i2, int i3, int i4, String str2);

    void setComponentEnabledSetting(ComponentName componentName, int i2, int i3, int i4);

    boolean setInstallLocation(int i2);

    void setInstallerPackageName(String str, String str2);

    void setLastChosenActivity(Intent intent, String str, int i2, IntentFilter intentFilter, int i3, ComponentName componentName);

    void setPackageHardwareAccMode(String str, int i2);

    void setPackageStoppedState(String str, boolean z2, int i2);

    void setPermissionEnforced(String str, boolean z2);

    void systemReady();

    void updateExternalMediaStatus(boolean z2, boolean z3);

    void verifyPendingInstall(int i2, int i3);
}
