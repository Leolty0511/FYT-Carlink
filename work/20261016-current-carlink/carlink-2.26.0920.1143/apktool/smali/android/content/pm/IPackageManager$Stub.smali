.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_activitySupportsIntent:I = 0xf

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x4c

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0xa1

.field static final TRANSACTION_addPermission:I = 0x15

.field static final TRANSACTION_addPermissionAsync:I = 0x84

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x4a

.field static final TRANSACTION_addPreferredActivity:I = 0x46

.field static final TRANSACTION_backupAppData:I = 0xbc

.field static final TRANSACTION_canForwardTo:I = 0x2c

.field static final TRANSACTION_canRequestPackageInstalls:I = 0xb5

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x8

.field static final TRANSACTION_checkPackageStartable:I = 0x1

.field static final TRANSACTION_checkPermission:I = 0x13

.field static final TRANSACTION_checkSignatures:I = 0x1f

.field static final TRANSACTION_checkUidPermission:I = 0x14

.field static final TRANSACTION_checkUidSignatures:I = 0x20

.field static final TRANSACTION_clearApplicationProfileData:I = 0x68

.field static final TRANSACTION_clearApplicationUserData:I = 0x67

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x4d

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x4b

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x48

.field static final TRANSACTION_copyFileToDir:I = 0xbb

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x7

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x65

.field static final TRANSACTION_deleteApplicationCacheFilesAsUser:I = 0x66

.field static final TRANSACTION_deletePackageAsUser:I = 0x40

.field static final TRANSACTION_deletePackageVersioned:I = 0x41

.field static final TRANSACTION_deletePreloadsFileCache:I = 0xb6

.field static final TRANSACTION_dumpProfiles:I = 0x78

.field static final TRANSACTION_enterSafeMode:I = 0x6d

.field static final TRANSACTION_extendVerificationTimeout:I = 0x89

.field static final TRANSACTION_findPersistentPreferredActivity:I = 0x2b

.field static final TRANSACTION_finishPackageInstall:I = 0x3d

.field static final TRANSACTION_flushPackageRestrictionsAsUser:I = 0x61

.field static final TRANSACTION_forceDexOpt:I = 0x79

.field static final TRANSACTION_freeStorage:I = 0x64

.field static final TRANSACTION_freeStorageAndNotify:I = 0x63

.field static final TRANSACTION_getActivityInfo:I = 0xe

.field static final TRANSACTION_getAllIntentFilters:I = 0x8e

.field static final TRANSACTION_getAllPackages:I = 0x21

.field static final TRANSACTION_getAllPermissionGroups:I = 0xc

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x29

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x5f

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x99

.field static final TRANSACTION_getApplicationInfo:I = 0xd

.field static final TRANSACTION_getBlockUninstallForUser:I = 0x9c

.field static final TRANSACTION_getChangedPackages:I = 0xb0

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x5d

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x52

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0x90

.field static final TRANSACTION_getFlagsForUid:I = 0x26

.field static final TRANSACTION_getHomeActivities:I = 0x58

.field static final TRANSACTION_getInstallLocation:I = 0x86

.field static final TRANSACTION_getInstallReason:I = 0xb3

.field static final TRANSACTION_getInstalledApplications:I = 0x35

.field static final TRANSACTION_getInstalledPackages:I = 0x33

.field static final TRANSACTION_getInstallerPackageName:I = 0x42

.field static final TRANSACTION_getInstantAppAndroidId:I = 0xba

.field static final TRANSACTION_getInstantAppCookie:I = 0xa8

.field static final TRANSACTION_getInstantAppIcon:I = 0xaa

.field static final TRANSACTION_getInstantAppInstallerComponent:I = 0xb9

.field static final TRANSACTION_getInstantAppResolverComponent:I = 0xb7

.field static final TRANSACTION_getInstantAppResolverSettingsComponent:I = 0xb8

.field static final TRANSACTION_getInstantApps:I = 0xa7

.field static final TRANSACTION_getInstrumentationInfo:I = 0x3a

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x54

.field static final TRANSACTION_getIntentFilterVerifications:I = 0x8d

.field static final TRANSACTION_getIntentVerificationStatus:I = 0x8b

.field static final TRANSACTION_getKeySetByAlias:I = 0x9d

.field static final TRANSACTION_getLastChosenActivity:I = 0x44

.field static final TRANSACTION_getMoveStatus:I = 0x7e

.field static final TRANSACTION_getNameForUid:I = 0x23

.field static final TRANSACTION_getNamesForUids:I = 0x24

.field static final TRANSACTION_getPackageGids:I = 0x6

.field static final TRANSACTION_getPackageInfo:I = 0x3

.field static final TRANSACTION_getPackageInfoVersioned:I = 0x4

.field static final TRANSACTION_getPackageInstaller:I = 0x9a

.field static final TRANSACTION_getPackageSizeInfo:I = 0x69

.field static final TRANSACTION_getPackageUid:I = 0x5

.field static final TRANSACTION_getPackagesForUid:I = 0x22

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x34

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0xa6

.field static final TRANSACTION_getPermissionFlags:I = 0x1a

.field static final TRANSACTION_getPermissionGrantBackup:I = 0x56

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xb

.field static final TRANSACTION_getPermissionInfo:I = 0x9

.field static final TRANSACTION_getPersistentApplications:I = 0x36

.field static final TRANSACTION_getPreferredActivities:I = 0x49

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x50

.field static final TRANSACTION_getPreviousCodePaths:I = 0xb2

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x27

.field static final TRANSACTION_getProviderInfo:I = 0x12

.field static final TRANSACTION_getReceiverInfo:I = 0x10

.field static final TRANSACTION_getServiceInfo:I = 0x11

.field static final TRANSACTION_getServicesSystemSharedLibraryPackageName:I = 0xae

.field static final TRANSACTION_getSharedLibraries:I = 0xb4

.field static final TRANSACTION_getSharedSystemSharedLibraryPackageName:I = 0xaf

.field static final TRANSACTION_getSigningKeySet:I = 0x9e

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x6b

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x6a

.field static final TRANSACTION_getUidForSharedUser:I = 0x25

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x91

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0xa3

.field static final TRANSACTION_grantDefaultPermissionsToEnabledImsServices:I = 0xa4

.field static final TRANSACTION_grantRuntimePermission:I = 0x17

.field static final TRANSACTION_hasSystemFeature:I = 0x6c

.field static final TRANSACTION_hasSystemUidErrors:I = 0x70

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x87

.field static final TRANSACTION_installPackageAsUser:I = 0x3c

.field static final TRANSACTION_isFirstBoot:I = 0x92

.field static final TRANSACTION_isInstantApp:I = 0xab

.field static final TRANSACTION_isOnlyCoreApps:I = 0x93

.field static final TRANSACTION_isPackageAvailable:I = 0x2

.field static final TRANSACTION_isPackageDeviceAdminOnAnyUser:I = 0xb1

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0x9f

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0xa0

.field static final TRANSACTION_isPackageSuspendedForUser:I = 0x4f

.field static final TRANSACTION_isPermissionEnforced:I = 0x96

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0xa5

.field static final TRANSACTION_isProtectedBroadcast:I = 0x1e

.field static final TRANSACTION_isSafeMode:I = 0x6e

.field static final TRANSACTION_isStorageLow:I = 0x97

.field static final TRANSACTION_isUidPrivileged:I = 0x28

.field static final TRANSACTION_isUpgrade:I = 0x94

.field static final TRANSACTION_logAppProcessStartIfNeeded:I = 0x60

.field static final TRANSACTION_movePackage:I = 0x81

.field static final TRANSACTION_movePrimaryEmulatedStorage:I = 0x83

.field static final TRANSACTION_movePrimaryStorage:I = 0x82

.field static final TRANSACTION_nextPackageToClean:I = 0x7d

.field static final TRANSACTION_notifyDexLoad:I = 0x74

.field static final TRANSACTION_notifyPackageUse:I = 0x73

.field static final TRANSACTION_performDexOptMode:I = 0x76

.field static final TRANSACTION_performDexOptSecondary:I = 0x77

.field static final TRANSACTION_performFstrimIfNeeded:I = 0x71

.field static final TRANSACTION_queryContentProviders:I = 0x39

.field static final TRANSACTION_queryInstrumentation:I = 0x3b

.field static final TRANSACTION_queryIntentActivities:I = 0x2d

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x2e

.field static final TRANSACTION_queryIntentContentProviders:I = 0x32

.field static final TRANSACTION_queryIntentReceivers:I = 0x2f

.field static final TRANSACTION_queryIntentServices:I = 0x31

.field static final TRANSACTION_queryPermissionsByGroup:I = 0xa

.field static final TRANSACTION_querySyncProviders:I = 0x38

.field static final TRANSACTION_reconcileSecondaryDexFiles:I = 0x7b

.field static final TRANSACTION_registerDexModule:I = 0x75

.field static final TRANSACTION_registerMoveCallback:I = 0x7f

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0xa2

.field static final TRANSACTION_removePermission:I = 0x16

.field static final TRANSACTION_replacePreferredActivity:I = 0x47

.field static final TRANSACTION_resetApplicationPreferences:I = 0x43

.field static final TRANSACTION_resetRuntimePermissions:I = 0x19

.field static final TRANSACTION_resolveContentProvider:I = 0x37

.field static final TRANSACTION_resolveIntent:I = 0x2a

.field static final TRANSACTION_resolveService:I = 0x30

.field static final TRANSACTION_restoreAppData:I = 0xbd

.field static final TRANSACTION_restoreDefaultApps:I = 0x53

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x55

.field static final TRANSACTION_restorePermissionGrants:I = 0x57

.field static final TRANSACTION_restorePreferredActivities:I = 0x51

.field static final TRANSACTION_revokeRuntimePermission:I = 0x18

.field static final TRANSACTION_runBackgroundDexoptJob:I = 0x7a

.field static final TRANSACTION_setApplicationCategoryHint:I = 0x3f

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x5e

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x98

.field static final TRANSACTION_setBlockUninstallForUser:I = 0x9b

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x5a

.field static final TRANSACTION_setComponentEnabledSettingForSetupMenu:I = 0x5b

.field static final TRANSACTION_setComponentEnabledSettingForSpecific:I = 0x5c

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0x8f

.field static final TRANSACTION_setHomeActivity:I = 0x59

.field static final TRANSACTION_setInstallLocation:I = 0x85

.field static final TRANSACTION_setInstallerPackageName:I = 0x3e

.field static final TRANSACTION_setInstantAppCookie:I = 0xa9

.field static final TRANSACTION_setLastChosenActivity:I = 0x45

.field static final TRANSACTION_setPackageStoppedState:I = 0x62

.field static final TRANSACTION_setPackagesSuspendedAsUser:I = 0x4e

.field static final TRANSACTION_setPermissionEnforced:I = 0x95

.field static final TRANSACTION_setRequiredForSystemUser:I = 0xac

.field static final TRANSACTION_setUpdateAvailable:I = 0xad

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x1d

.field static final TRANSACTION_systemReady:I = 0x6f

.field static final TRANSACTION_unregisterMoveCallback:I = 0x80

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x7c

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0x8c

.field static final TRANSACTION_updatePackagesIfNeeded:I = 0x72

.field static final TRANSACTION_updatePermissionFlags:I = 0x1b

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x1c

.field static final TRANSACTION_verifyIntentFilter:I = 0x8a

.field static final TRANSACTION_verifyPendingInstall:I = 0x88


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.content.pm.IPackageManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.content.pm.IPackageManager"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/content/pm/IPackageManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/content/pm/IPackageManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    move v0, p1

    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    const v2, 0x5f4e5446

    .line 8
    .line 9
    .line 10
    const-string v3, "android.content.pm.IPackageManager"

    .line 11
    .line 12
    const/4 v10, 0x1

    .line 13
    if-eq v0, v2, :cond_66

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0

    .line 25
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->restoreAppData(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    return v10

    .line 47
    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->backupAppData(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    return v10

    .line 69
    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    move-object v0, p0

    .line 93
    move-object v1, v2

    .line 94
    move-object v2, v3

    .line 95
    move-object v3, v4

    .line 96
    move-object v4, v5

    .line 97
    move v5, v6

    .line 98
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->copyFileToDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    .line 107
    .line 108
    return v10

    .line 109
    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return v10

    .line 131
    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    .line 140
    .line 141
    if-eqz v0, :cond_0

    .line 142
    .line 143
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    :goto_0
    return v10

    .line 154
    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    if-eqz v0, :cond_1

    .line 165
    .line 166
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    .line 175
    .line 176
    :goto_1
    return v10

    .line 177
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    .line 186
    .line 187
    if-eqz v0, :cond_2

    .line 188
    .line 189
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    .line 198
    .line 199
    :goto_2
    return v10

    .line 200
    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->deletePreloadsFileCache()V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    .line 208
    .line 209
    return v10

    .line 210
    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->canRequestPackageInstalls(Ljava/lang/String;I)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    .line 230
    .line 231
    return v10

    .line 232
    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getSharedLibraries(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    .line 253
    .line 254
    if-eqz v0, :cond_3

    .line 255
    .line 256
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    .line 265
    .line 266
    :goto_3
    return v10

    .line 267
    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getInstallReason(Ljava/lang/String;I)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    .line 287
    .line 288
    return v10

    .line 289
    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getPreviousCodePaths(Ljava/lang/String;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 304
    .line 305
    .line 306
    return v10

    .line 307
    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    .line 323
    .line 324
    return v10

    .line 325
    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    .line 342
    .line 343
    if-eqz v0, :cond_4

    .line 344
    .line 345
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ChangedPackages;->writeToParcel(Landroid/os/Parcel;I)V

    .line 349
    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    .line 354
    .line 355
    :goto_4
    return v10

    .line 356
    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    return v10

    .line 370
    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return v10

    .line 384
    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-eqz v1, :cond_5

    .line 396
    .line 397
    move v11, v10

    .line 398
    :cond_5
    invoke-interface {p0, v0, v11}, Landroid/content/pm/IPackageManager;->setUpdateAvailable(Ljava/lang/String;Z)V

    .line 399
    .line 400
    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    .line 403
    .line 404
    return v10

    .line 405
    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-eqz v1, :cond_6

    .line 417
    .line 418
    move v11, v10

    .line 419
    :cond_6
    invoke-interface {p0, v0, v11}, Landroid/content/pm/IPackageManager;->setRequiredForSystemUser(Ljava/lang/String;Z)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    .line 428
    .line 429
    return v10

    .line 430
    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    .line 450
    .line 451
    return v10

    .line 452
    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    .line 469
    .line 470
    if-eqz v0, :cond_7

    .line 471
    .line 472
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v9, v10}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 476
    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    .line 481
    .line 482
    :goto_5
    return v10

    .line 483
    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->setInstantAppCookie(Ljava/lang/String;[BI)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    .line 507
    .line 508
    return v10

    .line 509
    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getInstantAppCookie(Ljava/lang/String;I)[B

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 528
    .line 529
    .line 530
    return v10

    .line 531
    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getInstantApps(I)Landroid/content/pm/ParceledListSlice;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    .line 544
    .line 545
    if-eqz v0, :cond_8

    .line 546
    .line 547
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 551
    .line 552
    .line 553
    goto :goto_6

    .line 554
    :cond_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    .line 556
    .line 557
    :goto_6
    return v10

    .line 558
    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    return v10

    .line 572
    :pswitch_18
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    .line 596
    .line 597
    return v10

    .line 598
    :pswitch_19
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    .line 614
    .line 615
    return v10

    .line 616
    :pswitch_1a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    .line 632
    .line 633
    return v10

    .line 634
    :pswitch_1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-static {v0}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    .line 650
    .line 651
    return v10

    .line 652
    :pswitch_1c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-static {v0}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    .line 668
    .line 669
    return v10

    .line 670
    :pswitch_1d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    if-eqz v3, :cond_9

    .line 682
    .line 683
    sget-object v2, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 684
    .line 685
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    move-object v2, v1

    .line 690
    check-cast v2, Landroid/content/pm/KeySet;

    .line 691
    .line 692
    :cond_9
    invoke-interface {p0, v0, v2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    .line 701
    .line 702
    return v10

    .line 703
    :pswitch_1e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    if-eqz v3, :cond_a

    .line 715
    .line 716
    sget-object v2, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 717
    .line 718
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    move-object v2, v1

    .line 723
    check-cast v2, Landroid/content/pm/KeySet;

    .line 724
    .line 725
    :cond_a
    invoke-interface {p0, v0, v2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    .line 734
    .line 735
    return v10

    .line 736
    :pswitch_1f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    .line 749
    .line 750
    if-eqz v0, :cond_b

    .line 751
    .line 752
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 756
    .line 757
    .line 758
    goto :goto_7

    .line 759
    :cond_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    .line 761
    .line 762
    :goto_7
    return v10

    .line 763
    :pswitch_20
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    .line 780
    .line 781
    if-eqz v0, :cond_c

    .line 782
    .line 783
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 787
    .line 788
    .line 789
    goto :goto_8

    .line 790
    :cond_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    .line 792
    .line 793
    :goto_8
    return v10

    .line 794
    :pswitch_21
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    .line 814
    .line 815
    return v10

    .line 816
    :pswitch_22
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 824
    .line 825
    .line 826
    move-result v2

    .line 827
    if-eqz v2, :cond_d

    .line 828
    .line 829
    move v11, v10

    .line 830
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    invoke-interface {p0, v0, v11, v1}, Landroid/content/pm/IPackageManager;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    .line 843
    .line 844
    return v10

    .line 845
    :pswitch_23
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    .line 854
    .line 855
    if-eqz v0, :cond_e

    .line 856
    .line 857
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    :cond_e
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 862
    .line 863
    .line 864
    return v10

    .line 865
    :pswitch_24
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    .line 877
    .line 878
    .line 879
    move-result v0

    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    .line 885
    .line 886
    return v10

    .line 887
    :pswitch_25
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    if-eqz v2, :cond_f

    .line 899
    .line 900
    move v11, v10

    .line 901
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 902
    .line 903
    .line 904
    move-result v1

    .line 905
    invoke-interface {p0, v0, v11, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    .line 914
    .line 915
    return v10

    .line 916
    :pswitch_26
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    .line 928
    .line 929
    return v10

    .line 930
    :pswitch_27
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    .line 932
    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z

    .line 938
    .line 939
    .line 940
    move-result v0

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    .line 946
    .line 947
    return v10

    .line 948
    :pswitch_28
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 956
    .line 957
    .line 958
    move-result v1

    .line 959
    if-eqz v1, :cond_10

    .line 960
    .line 961
    move v11, v10

    .line 962
    :cond_10
    invoke-interface {p0, v0, v11}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 963
    .line 964
    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    .line 967
    .line 968
    return v10

    .line 969
    :pswitch_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isUpgrade()Z

    .line 973
    .line 974
    .line 975
    move-result v0

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    .line 981
    .line 982
    return v10

    .line 983
    :pswitch_2a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    .line 987
    .line 988
    .line 989
    move-result v0

    .line 990
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    .line 995
    .line 996
    return v10

    .line 997
    :pswitch_2b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v0

    .line 1004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    .line 1009
    .line 1010
    return v10

    .line 1011
    :pswitch_2c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    .line 1020
    .line 1021
    if-eqz v0, :cond_11

    .line 1022
    .line 1023
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1027
    .line 1028
    .line 1029
    goto :goto_9

    .line 1030
    :cond_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    .line 1032
    .line 1033
    :goto_9
    return v10

    .line 1034
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    return v10

    .line 1052
    :pswitch_2e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v0

    .line 1067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    .line 1072
    .line 1073
    return v10

    .line 1074
    :pswitch_2f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    .line 1087
    .line 1088
    if-eqz v0, :cond_12

    .line 1089
    .line 1090
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1094
    .line 1095
    .line 1096
    goto :goto_a

    .line 1097
    :cond_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1098
    .line 1099
    .line 1100
    :goto_a
    return v10

    .line 1101
    :pswitch_30
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    .line 1114
    .line 1115
    if-eqz v0, :cond_13

    .line 1116
    .line 1117
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1121
    .line 1122
    .line 1123
    goto :goto_b

    .line 1124
    :cond_13
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    .line 1126
    .line 1127
    :goto_b
    return v10

    .line 1128
    :pswitch_31
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1136
    .line 1137
    .line 1138
    move-result v2

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1140
    .line 1141
    .line 1142
    move-result v1

    .line 1143
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v0

    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    .line 1152
    .line 1153
    return v10

    .line 1154
    :pswitch_32
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1162
    .line 1163
    .line 1164
    move-result v1

    .line 1165
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    .line 1166
    .line 1167
    .line 1168
    move-result v0

    .line 1169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    .line 1174
    .line 1175
    return v10

    .line 1176
    :pswitch_33
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1180
    .line 1181
    .line 1182
    move-result v0

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1184
    .line 1185
    .line 1186
    move-result v2

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v1

    .line 1191
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->verifyIntentFilter(IILjava/util/List;)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    .line 1196
    .line 1197
    return v10

    .line 1198
    :pswitch_34
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1202
    .line 1203
    .line 1204
    move-result v0

    .line 1205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1206
    .line 1207
    .line 1208
    move-result v2

    .line 1209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1210
    .line 1211
    .line 1212
    move-result-wide v3

    .line 1213
    invoke-interface {p0, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout(IIJ)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    .line 1218
    .line 1219
    return v10

    .line 1220
    :pswitch_35
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1224
    .line 1225
    .line 1226
    move-result v0

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1228
    .line 1229
    .line 1230
    move-result v1

    .line 1231
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->verifyPendingInstall(II)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    .line 1236
    .line 1237
    return v10

    .line 1238
    :pswitch_36
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1246
    .line 1247
    .line 1248
    move-result v2

    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1250
    .line 1251
    .line 1252
    move-result v3

    .line 1253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1254
    .line 1255
    .line 1256
    move-result v1

    .line 1257
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;III)I

    .line 1258
    .line 1259
    .line 1260
    move-result v0

    .line 1261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    .line 1266
    .line 1267
    return v10

    .line 1268
    :pswitch_37
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    .line 1270
    .line 1271
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    .line 1280
    .line 1281
    return v10

    .line 1282
    :pswitch_38
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1286
    .line 1287
    .line 1288
    move-result v0

    .line 1289
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    .line 1298
    .line 1299
    return v10

    .line 1300
    :pswitch_39
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1304
    .line 1305
    .line 1306
    move-result v0

    .line 1307
    if-eqz v0, :cond_14

    .line 1308
    .line 1309
    sget-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1310
    .line 1311
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    move-object v2, v0

    .line 1316
    check-cast v2, Landroid/content/pm/PermissionInfo;

    .line 1317
    .line 1318
    :cond_14
    invoke-interface {p0, v2}, Landroid/content/pm/IPackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    .line 1319
    .line 1320
    .line 1321
    move-result v0

    .line 1322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    .line 1327
    .line 1328
    return v10

    .line 1329
    :pswitch_3a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->movePrimaryEmulatedStorage(Ljava/lang/String;)I

    .line 1337
    .line 1338
    .line 1339
    move-result v0

    .line 1340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    .line 1345
    .line 1346
    return v10

    .line 1347
    :pswitch_3b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    move-result v0

    .line 1358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    .line 1363
    .line 1364
    return v10

    .line 1365
    :pswitch_3c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v1

    .line 1376
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .line 1378
    .line 1379
    move-result v0

    .line 1380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    .line 1385
    .line 1386
    return v10

    .line 1387
    :pswitch_3d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v0

    .line 1394
    invoke-static {v0}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    .line 1403
    .line 1404
    return v10

    .line 1405
    :pswitch_3e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    invoke-static {v0}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1420
    .line 1421
    .line 1422
    return v10

    .line 1423
    :pswitch_3f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1427
    .line 1428
    .line 1429
    move-result v0

    .line 1430
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    .line 1431
    .line 1432
    .line 1433
    move-result v0

    .line 1434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    .line 1439
    .line 1440
    return v10

    .line 1441
    :pswitch_40
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1445
    .line 1446
    .line 1447
    move-result v0

    .line 1448
    if-eqz v0, :cond_15

    .line 1449
    .line 1450
    sget-object v0, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1451
    .line 1452
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    move-object v2, v0

    .line 1457
    check-cast v2, Landroid/content/pm/PackageCleanItem;

    .line 1458
    .line 1459
    :cond_15
    invoke-interface {p0, v2}, Landroid/content/pm/IPackageManager;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1464
    .line 1465
    .line 1466
    if-eqz v0, :cond_16

    .line 1467
    .line 1468
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1472
    .line 1473
    .line 1474
    goto :goto_c

    .line 1475
    :cond_16
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    .line 1477
    .line 1478
    :goto_c
    return v10

    .line 1479
    :pswitch_41
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1483
    .line 1484
    .line 1485
    move-result v0

    .line 1486
    if-eqz v0, :cond_17

    .line 1487
    .line 1488
    move v0, v10

    .line 1489
    goto :goto_d

    .line 1490
    :cond_17
    move v0, v11

    .line 1491
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1492
    .line 1493
    .line 1494
    move-result v1

    .line 1495
    if-eqz v1, :cond_18

    .line 1496
    .line 1497
    move v11, v10

    .line 1498
    :cond_18
    invoke-interface {p0, v0, v11}, Landroid/content/pm/IPackageManager;->updateExternalMediaStatus(ZZ)V

    .line 1499
    .line 1500
    .line 1501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    .line 1503
    .line 1504
    return v10

    .line 1505
    :pswitch_42
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    .line 1507
    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v0

    .line 1512
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1516
    .line 1517
    .line 1518
    return v10

    .line 1519
    :pswitch_43
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->runBackgroundDexoptJob()Z

    .line 1523
    .line 1524
    .line 1525
    move-result v0

    .line 1526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1530
    .line 1531
    .line 1532
    return v10

    .line 1533
    :pswitch_44
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v0

    .line 1540
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V

    .line 1541
    .line 1542
    .line 1543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    .line 1545
    .line 1546
    return v10

    .line 1547
    :pswitch_45
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    .line 1559
    .line 1560
    return v10

    .line 1561
    :pswitch_46
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v0

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v2

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1573
    .line 1574
    .line 1575
    move-result v1

    .line 1576
    if-eqz v1, :cond_19

    .line 1577
    .line 1578
    move v11, v10

    .line 1579
    :cond_19
    invoke-interface {p0, v0, v2, v11}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1580
    .line 1581
    .line 1582
    move-result v0

    .line 1583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    .line 1585
    .line 1586
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    .line 1588
    .line 1589
    return v10

    .line 1590
    :pswitch_47
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    .line 1592
    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v2

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1598
    .line 1599
    .line 1600
    move-result v0

    .line 1601
    if-eqz v0, :cond_1a

    .line 1602
    .line 1603
    move v3, v10

    .line 1604
    goto :goto_e

    .line 1605
    :cond_1a
    move v3, v11

    .line 1606
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v4

    .line 1610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1611
    .line 1612
    .line 1613
    move-result v0

    .line 1614
    if-eqz v0, :cond_1b

    .line 1615
    .line 1616
    move v5, v10

    .line 1617
    goto :goto_f

    .line 1618
    :cond_1b
    move v5, v11

    .line 1619
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1620
    .line 1621
    .line 1622
    move-result v0

    .line 1623
    if-eqz v0, :cond_1c

    .line 1624
    .line 1625
    move v11, v10

    .line 1626
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v6

    .line 1630
    move-object v0, p0

    .line 1631
    move-object v1, v2

    .line 1632
    move v2, v3

    .line 1633
    move-object v3, v4

    .line 1634
    move v4, v5

    .line 1635
    move v5, v11

    .line 1636
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    .line 1637
    .line 1638
    .line 1639
    move-result v0

    .line 1640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    .line 1642
    .line 1643
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    .line 1645
    .line 1646
    return v10

    .line 1647
    :pswitch_48
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v0

    .line 1654
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v2

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1659
    .line 1660
    .line 1661
    move-result v3

    .line 1662
    if-eqz v3, :cond_1d

    .line 1663
    .line 1664
    move v11, v10

    .line 1665
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v1

    .line 1669
    invoke-static {v1}, Landroid/content/pm/IDexModuleRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDexModuleRegisterCallback;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v1

    .line 1673
    invoke-interface {p0, v0, v2, v11, v1}, Landroid/content/pm/IPackageManager;->registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V

    .line 1674
    .line 1675
    .line 1676
    return v10

    .line 1677
    :pswitch_49
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    .line 1679
    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v0

    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v2

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v3

    .line 1692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v1

    .line 1696
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/content/pm/IPackageManager;->notifyDexLoad(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1697
    .line 1698
    .line 1699
    return v10

    .line 1700
    :pswitch_4a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1701
    .line 1702
    .line 1703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v0

    .line 1707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1708
    .line 1709
    .line 1710
    move-result v1

    .line 1711
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->notifyPackageUse(Ljava/lang/String;I)V

    .line 1712
    .line 1713
    .line 1714
    return v10

    .line 1715
    :pswitch_4b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1716
    .line 1717
    .line 1718
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->updatePackagesIfNeeded()V

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    .line 1723
    .line 1724
    return v10

    .line 1725
    :pswitch_4c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    .line 1727
    .line 1728
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->performFstrimIfNeeded()V

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    .line 1733
    .line 1734
    return v10

    .line 1735
    :pswitch_4d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    .line 1737
    .line 1738
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->hasSystemUidErrors()Z

    .line 1739
    .line 1740
    .line 1741
    move-result v0

    .line 1742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    .line 1747
    .line 1748
    return v10

    .line 1749
    :pswitch_4e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1750
    .line 1751
    .line 1752
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->systemReady()V

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    .line 1757
    .line 1758
    return v10

    .line 1759
    :pswitch_4f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1760
    .line 1761
    .line 1762
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    .line 1763
    .line 1764
    .line 1765
    move-result v0

    .line 1766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1767
    .line 1768
    .line 1769
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    .line 1771
    .line 1772
    return v10

    .line 1773
    :pswitch_50
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1774
    .line 1775
    .line 1776
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->enterSafeMode()V

    .line 1777
    .line 1778
    .line 1779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    .line 1781
    .line 1782
    return v10

    .line 1783
    :pswitch_51
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    .line 1785
    .line 1786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v0

    .line 1790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1791
    .line 1792
    .line 1793
    move-result v1

    .line 1794
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 1795
    .line 1796
    .line 1797
    move-result v0

    .line 1798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    .line 1800
    .line 1801
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    .line 1803
    .line 1804
    return v10

    .line 1805
    :pswitch_52
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    .line 1807
    .line 1808
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v0

    .line 1812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    .line 1814
    .line 1815
    if-eqz v0, :cond_1e

    .line 1816
    .line 1817
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1821
    .line 1822
    .line 1823
    goto :goto_10

    .line 1824
    :cond_1e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1825
    .line 1826
    .line 1827
    :goto_10
    return v10

    .line 1828
    :pswitch_53
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    .line 1830
    .line 1831
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v0

    .line 1835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    .line 1837
    .line 1838
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1839
    .line 1840
    .line 1841
    return v10

    .line 1842
    :pswitch_54
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1843
    .line 1844
    .line 1845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v0

    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1850
    .line 1851
    .line 1852
    move-result v2

    .line 1853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v1

    .line 1857
    invoke-static {v1}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v1

    .line 1861
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1862
    .line 1863
    .line 1864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    .line 1866
    .line 1867
    return v10

    .line 1868
    :pswitch_55
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v0

    .line 1875
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    .line 1880
    .line 1881
    return v10

    .line 1882
    :pswitch_56
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    .line 1884
    .line 1885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v0

    .line 1889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v2

    .line 1893
    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v2

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1898
    .line 1899
    .line 1900
    move-result v1

    .line 1901
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    .line 1906
    .line 1907
    return v10

    .line 1908
    :pswitch_57
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    .line 1910
    .line 1911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v0

    .line 1915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1916
    .line 1917
    .line 1918
    move-result v2

    .line 1919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v1

    .line 1923
    invoke-static {v1}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    .line 1924
    .line 1925
    .line 1926
    move-result-object v1

    .line 1927
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1931
    .line 1932
    .line 1933
    return v10

    .line 1934
    :pswitch_58
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v0

    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v1

    .line 1945
    invoke-static {v1}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    .line 1946
    .line 1947
    .line 1948
    move-result-object v1

    .line 1949
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1953
    .line 1954
    .line 1955
    return v10

    .line 1956
    :pswitch_59
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    .line 1958
    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v3

    .line 1963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1964
    .line 1965
    .line 1966
    move-result-wide v4

    .line 1967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1968
    .line 1969
    .line 1970
    move-result v6

    .line 1971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1972
    .line 1973
    .line 1974
    move-result v0

    .line 1975
    if-eqz v0, :cond_1f

    .line 1976
    .line 1977
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1978
    .line 1979
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v0

    .line 1983
    check-cast v0, Landroid/content/IntentSender;

    .line 1984
    .line 1985
    move-object v7, v0

    .line 1986
    goto :goto_11

    .line 1987
    :cond_1f
    move-object v7, v2

    .line 1988
    :goto_11
    move-object v0, p0

    .line 1989
    move-object v1, v3

    .line 1990
    move-wide v2, v4

    .line 1991
    move v4, v6

    .line 1992
    move-object v5, v7

    .line 1993
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    .line 1998
    .line 1999
    return v10

    .line 2000
    :pswitch_5a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2001
    .line 2002
    .line 2003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2004
    .line 2005
    .line 2006
    move-result-object v2

    .line 2007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 2008
    .line 2009
    .line 2010
    move-result-wide v3

    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2012
    .line 2013
    .line 2014
    move-result v5

    .line 2015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v0

    .line 2019
    invoke-static {v0}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v6

    .line 2023
    move-object v0, p0

    .line 2024
    move-object v1, v2

    .line 2025
    move-wide v2, v3

    .line 2026
    move v4, v5

    .line 2027
    move-object v5, v6

    .line 2028
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 2029
    .line 2030
    .line 2031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    .line 2033
    .line 2034
    return v10

    .line 2035
    :pswitch_5b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2036
    .line 2037
    .line 2038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2039
    .line 2040
    .line 2041
    move-result-object v0

    .line 2042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2043
    .line 2044
    .line 2045
    move-result v2

    .line 2046
    if-eqz v2, :cond_20

    .line 2047
    .line 2048
    move v11, v10

    .line 2049
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2050
    .line 2051
    .line 2052
    move-result v1

    .line 2053
    invoke-interface {p0, v0, v11, v1}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 2054
    .line 2055
    .line 2056
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2057
    .line 2058
    .line 2059
    return v10

    .line 2060
    :pswitch_5c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    .line 2062
    .line 2063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2064
    .line 2065
    .line 2066
    move-result v0

    .line 2067
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V

    .line 2068
    .line 2069
    .line 2070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2071
    .line 2072
    .line 2073
    return v10

    .line 2074
    :pswitch_5d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2075
    .line 2076
    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v2

    .line 2081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2082
    .line 2083
    .line 2084
    move-result v3

    .line 2085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v4

    .line 2089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v5

    .line 2093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2094
    .line 2095
    .line 2096
    move-result v6

    .line 2097
    move-object v0, p0

    .line 2098
    move-object v1, v2

    .line 2099
    move v2, v3

    .line 2100
    move-object v3, v4

    .line 2101
    move-object v4, v5

    .line 2102
    move v5, v6

    .line 2103
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2104
    .line 2105
    .line 2106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2107
    .line 2108
    .line 2109
    return v10

    .line 2110
    :pswitch_5e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2111
    .line 2112
    .line 2113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v0

    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2118
    .line 2119
    .line 2120
    move-result v1

    .line 2121
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 2122
    .line 2123
    .line 2124
    move-result v0

    .line 2125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2126
    .line 2127
    .line 2128
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    .line 2130
    .line 2131
    return v10

    .line 2132
    :pswitch_5f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2133
    .line 2134
    .line 2135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v2

    .line 2139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2140
    .line 2141
    .line 2142
    move-result v3

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2144
    .line 2145
    .line 2146
    move-result v4

    .line 2147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2148
    .line 2149
    .line 2150
    move-result v5

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v6

    .line 2155
    move-object v0, p0

    .line 2156
    move-object v1, v2

    .line 2157
    move v2, v3

    .line 2158
    move v3, v4

    .line 2159
    move v4, v5

    .line 2160
    move-object v5, v6

    .line 2161
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 2162
    .line 2163
    .line 2164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2165
    .line 2166
    .line 2167
    return v10

    .line 2168
    :pswitch_60
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    .line 2170
    .line 2171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2172
    .line 2173
    .line 2174
    move-result v0

    .line 2175
    if-eqz v0, :cond_21

    .line 2176
    .line 2177
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2178
    .line 2179
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v0

    .line 2183
    move-object v2, v0

    .line 2184
    check-cast v2, Landroid/content/ComponentName;

    .line 2185
    .line 2186
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2187
    .line 2188
    .line 2189
    move-result v0

    .line 2190
    invoke-interface {p0, v2, v0}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    .line 2191
    .line 2192
    .line 2193
    move-result v0

    .line 2194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    .line 2196
    .line 2197
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    .line 2199
    .line 2200
    return v10

    .line 2201
    :pswitch_61
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2205
    .line 2206
    .line 2207
    move-result v0

    .line 2208
    if-eqz v0, :cond_22

    .line 2209
    .line 2210
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2211
    .line 2212
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v0

    .line 2216
    check-cast v0, Landroid/content/ComponentName;

    .line 2217
    .line 2218
    move-object v3, v0

    .line 2219
    goto :goto_12

    .line 2220
    :cond_22
    move-object v3, v2

    .line 2221
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2222
    .line 2223
    .line 2224
    move-result v4

    .line 2225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2226
    .line 2227
    .line 2228
    move-result v5

    .line 2229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2230
    .line 2231
    .line 2232
    move-result v6

    .line 2233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2234
    .line 2235
    .line 2236
    move-result v0

    .line 2237
    if-eqz v0, :cond_23

    .line 2238
    .line 2239
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2240
    .line 2241
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v0

    .line 2245
    check-cast v0, Landroid/content/Intent;

    .line 2246
    .line 2247
    move-object v7, v0

    .line 2248
    goto :goto_13

    .line 2249
    :cond_23
    move-object v7, v2

    .line 2250
    :goto_13
    move-object v0, p0

    .line 2251
    move-object v1, v3

    .line 2252
    move v2, v4

    .line 2253
    move v3, v5

    .line 2254
    move v4, v6

    .line 2255
    move-object v5, v7

    .line 2256
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSettingForSpecific(Landroid/content/ComponentName;IIILandroid/content/Intent;)V

    .line 2257
    .line 2258
    .line 2259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2260
    .line 2261
    .line 2262
    return v10

    .line 2263
    :pswitch_62
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2264
    .line 2265
    .line 2266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2267
    .line 2268
    .line 2269
    move-result v0

    .line 2270
    if-eqz v0, :cond_24

    .line 2271
    .line 2272
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2273
    .line 2274
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v0

    .line 2278
    check-cast v0, Landroid/content/ComponentName;

    .line 2279
    .line 2280
    goto :goto_14

    .line 2281
    :cond_24
    move-object v0, v2

    .line 2282
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2283
    .line 2284
    .line 2285
    move-result v3

    .line 2286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2287
    .line 2288
    .line 2289
    move-result v4

    .line 2290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2291
    .line 2292
    .line 2293
    move-result v5

    .line 2294
    if-eqz v5, :cond_25

    .line 2295
    .line 2296
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2297
    .line 2298
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2299
    .line 2300
    .line 2301
    move-result-object v1

    .line 2302
    move-object v2, v1

    .line 2303
    check-cast v2, Landroid/content/Intent;

    .line 2304
    .line 2305
    :cond_25
    invoke-interface {p0, v0, v3, v4, v2}, Landroid/content/pm/IPackageManager;->setComponentEnabledSettingForSetupMenu(Landroid/content/ComponentName;IILandroid/content/Intent;)V

    .line 2306
    .line 2307
    .line 2308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2309
    .line 2310
    .line 2311
    return v10

    .line 2312
    :pswitch_63
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2313
    .line 2314
    .line 2315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2316
    .line 2317
    .line 2318
    move-result v0

    .line 2319
    if-eqz v0, :cond_26

    .line 2320
    .line 2321
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2322
    .line 2323
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2324
    .line 2325
    .line 2326
    move-result-object v0

    .line 2327
    move-object v2, v0

    .line 2328
    check-cast v2, Landroid/content/ComponentName;

    .line 2329
    .line 2330
    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2331
    .line 2332
    .line 2333
    move-result v0

    .line 2334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2335
    .line 2336
    .line 2337
    move-result v3

    .line 2338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2339
    .line 2340
    .line 2341
    move-result v1

    .line 2342
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2346
    .line 2347
    .line 2348
    return v10

    .line 2349
    :pswitch_64
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2350
    .line 2351
    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2353
    .line 2354
    .line 2355
    move-result v0

    .line 2356
    if-eqz v0, :cond_27

    .line 2357
    .line 2358
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2359
    .line 2360
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2361
    .line 2362
    .line 2363
    move-result-object v0

    .line 2364
    move-object v2, v0

    .line 2365
    check-cast v2, Landroid/content/ComponentName;

    .line 2366
    .line 2367
    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2368
    .line 2369
    .line 2370
    move-result v0

    .line 2371
    invoke-interface {p0, v2, v0}, Landroid/content/pm/IPackageManager;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 2372
    .line 2373
    .line 2374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    .line 2376
    .line 2377
    return v10

    .line 2378
    :pswitch_65
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2379
    .line 2380
    .line 2381
    new-instance v0, Ljava/util/ArrayList;

    .line 2382
    .line 2383
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2384
    .line 2385
    .line 2386
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 2387
    .line 2388
    .line 2389
    move-result-object v1

    .line 2390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2391
    .line 2392
    .line 2393
    if-eqz v1, :cond_28

    .line 2394
    .line 2395
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2396
    .line 2397
    .line 2398
    invoke-virtual {v1, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2399
    .line 2400
    .line 2401
    goto :goto_15

    .line 2402
    :cond_28
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2403
    .line 2404
    .line 2405
    :goto_15
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2406
    .line 2407
    .line 2408
    return v10

    .line 2409
    :pswitch_66
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2410
    .line 2411
    .line 2412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 2413
    .line 2414
    .line 2415
    move-result-object v0

    .line 2416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2417
    .line 2418
    .line 2419
    move-result v1

    .line 2420
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->restorePermissionGrants([BI)V

    .line 2421
    .line 2422
    .line 2423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2424
    .line 2425
    .line 2426
    return v10

    .line 2427
    :pswitch_67
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2428
    .line 2429
    .line 2430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2431
    .line 2432
    .line 2433
    move-result v0

    .line 2434
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getPermissionGrantBackup(I)[B

    .line 2435
    .line 2436
    .line 2437
    move-result-object v0

    .line 2438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2439
    .line 2440
    .line 2441
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2442
    .line 2443
    .line 2444
    return v10

    .line 2445
    :pswitch_68
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2446
    .line 2447
    .line 2448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 2449
    .line 2450
    .line 2451
    move-result-object v0

    .line 2452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2453
    .line 2454
    .line 2455
    move-result v1

    .line 2456
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->restoreIntentFilterVerification([BI)V

    .line 2457
    .line 2458
    .line 2459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2460
    .line 2461
    .line 2462
    return v10

    .line 2463
    :pswitch_69
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2464
    .line 2465
    .line 2466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2467
    .line 2468
    .line 2469
    move-result v0

    .line 2470
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getIntentFilterVerificationBackup(I)[B

    .line 2471
    .line 2472
    .line 2473
    move-result-object v0

    .line 2474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2475
    .line 2476
    .line 2477
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2478
    .line 2479
    .line 2480
    return v10

    .line 2481
    :pswitch_6a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2482
    .line 2483
    .line 2484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 2485
    .line 2486
    .line 2487
    move-result-object v0

    .line 2488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2489
    .line 2490
    .line 2491
    move-result v1

    .line 2492
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    .line 2493
    .line 2494
    .line 2495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2496
    .line 2497
    .line 2498
    return v10

    .line 2499
    :pswitch_6b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2500
    .line 2501
    .line 2502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2503
    .line 2504
    .line 2505
    move-result v0

    .line 2506
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    .line 2507
    .line 2508
    .line 2509
    move-result-object v0

    .line 2510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2511
    .line 2512
    .line 2513
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2514
    .line 2515
    .line 2516
    return v10

    .line 2517
    :pswitch_6c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2518
    .line 2519
    .line 2520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 2521
    .line 2522
    .line 2523
    move-result-object v0

    .line 2524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2525
    .line 2526
    .line 2527
    move-result v1

    .line 2528
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    .line 2529
    .line 2530
    .line 2531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2532
    .line 2533
    .line 2534
    return v10

    .line 2535
    :pswitch_6d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    .line 2537
    .line 2538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2539
    .line 2540
    .line 2541
    move-result v0

    .line 2542
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    .line 2543
    .line 2544
    .line 2545
    move-result-object v0

    .line 2546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2547
    .line 2548
    .line 2549
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2550
    .line 2551
    .line 2552
    return v10

    .line 2553
    :pswitch_6e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2554
    .line 2555
    .line 2556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2557
    .line 2558
    .line 2559
    move-result-object v0

    .line 2560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2561
    .line 2562
    .line 2563
    move-result v1

    .line 2564
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    .line 2565
    .line 2566
    .line 2567
    move-result v0

    .line 2568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2569
    .line 2570
    .line 2571
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2572
    .line 2573
    .line 2574
    return v10

    .line 2575
    :pswitch_6f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2576
    .line 2577
    .line 2578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v0

    .line 2582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2583
    .line 2584
    .line 2585
    move-result v2

    .line 2586
    if-eqz v2, :cond_29

    .line 2587
    .line 2588
    move v11, v10

    .line 2589
    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2590
    .line 2591
    .line 2592
    move-result v1

    .line 2593
    invoke-interface {p0, v0, v11, v1}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;

    .line 2594
    .line 2595
    .line 2596
    move-result-object v0

    .line 2597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2598
    .line 2599
    .line 2600
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2601
    .line 2602
    .line 2603
    return v10

    .line 2604
    :pswitch_70
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2605
    .line 2606
    .line 2607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2608
    .line 2609
    .line 2610
    move-result v0

    .line 2611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v1

    .line 2615
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 2616
    .line 2617
    .line 2618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2619
    .line 2620
    .line 2621
    return v10

    .line 2622
    :pswitch_71
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2623
    .line 2624
    .line 2625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2626
    .line 2627
    .line 2628
    move-result v0

    .line 2629
    if-eqz v0, :cond_2a

    .line 2630
    .line 2631
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2632
    .line 2633
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2634
    .line 2635
    .line 2636
    move-result-object v0

    .line 2637
    check-cast v0, Landroid/content/IntentFilter;

    .line 2638
    .line 2639
    move-object v2, v0

    .line 2640
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2641
    .line 2642
    .line 2643
    move-result-object v3

    .line 2644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2645
    .line 2646
    .line 2647
    move-result v4

    .line 2648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2649
    .line 2650
    .line 2651
    move-result v5

    .line 2652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2653
    .line 2654
    .line 2655
    move-result v6

    .line 2656
    move-object v0, p0

    .line 2657
    move-object v1, v2

    .line 2658
    move-object v2, v3

    .line 2659
    move v3, v4

    .line 2660
    move v4, v5

    .line 2661
    move v5, v6

    .line 2662
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 2663
    .line 2664
    .line 2665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2666
    .line 2667
    .line 2668
    return v10

    .line 2669
    :pswitch_72
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2670
    .line 2671
    .line 2672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v0

    .line 2676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2677
    .line 2678
    .line 2679
    move-result v1

    .line 2680
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 2681
    .line 2682
    .line 2683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    .line 2685
    .line 2686
    return v10

    .line 2687
    :pswitch_73
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2688
    .line 2689
    .line 2690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2691
    .line 2692
    .line 2693
    move-result v0

    .line 2694
    if-eqz v0, :cond_2b

    .line 2695
    .line 2696
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2697
    .line 2698
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v0

    .line 2702
    check-cast v0, Landroid/content/IntentFilter;

    .line 2703
    .line 2704
    goto :goto_16

    .line 2705
    :cond_2b
    move-object v0, v2

    .line 2706
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2707
    .line 2708
    .line 2709
    move-result v3

    .line 2710
    if-eqz v3, :cond_2c

    .line 2711
    .line 2712
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2713
    .line 2714
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2715
    .line 2716
    .line 2717
    move-result-object v2

    .line 2718
    check-cast v2, Landroid/content/ComponentName;

    .line 2719
    .line 2720
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2721
    .line 2722
    .line 2723
    move-result v1

    .line 2724
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 2725
    .line 2726
    .line 2727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2728
    .line 2729
    .line 2730
    return v10

    .line 2731
    :pswitch_74
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2732
    .line 2733
    .line 2734
    new-instance v0, Ljava/util/ArrayList;

    .line 2735
    .line 2736
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2737
    .line 2738
    .line 2739
    new-instance v2, Ljava/util/ArrayList;

    .line 2740
    .line 2741
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2742
    .line 2743
    .line 2744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2745
    .line 2746
    .line 2747
    move-result-object v1

    .line 2748
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 2749
    .line 2750
    .line 2751
    move-result v1

    .line 2752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2753
    .line 2754
    .line 2755
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    .line 2757
    .line 2758
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2759
    .line 2760
    .line 2761
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2762
    .line 2763
    .line 2764
    return v10

    .line 2765
    :pswitch_75
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2766
    .line 2767
    .line 2768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2769
    .line 2770
    .line 2771
    move-result-object v0

    .line 2772
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 2773
    .line 2774
    .line 2775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2776
    .line 2777
    .line 2778
    return v10

    .line 2779
    :pswitch_76
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2780
    .line 2781
    .line 2782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2783
    .line 2784
    .line 2785
    move-result v0

    .line 2786
    if-eqz v0, :cond_2d

    .line 2787
    .line 2788
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2789
    .line 2790
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2791
    .line 2792
    .line 2793
    move-result-object v0

    .line 2794
    check-cast v0, Landroid/content/IntentFilter;

    .line 2795
    .line 2796
    move-object v3, v0

    .line 2797
    goto :goto_17

    .line 2798
    :cond_2d
    move-object v3, v2

    .line 2799
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2800
    .line 2801
    .line 2802
    move-result v4

    .line 2803
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2804
    .line 2805
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2806
    .line 2807
    .line 2808
    move-result-object v5

    .line 2809
    check-cast v5, [Landroid/content/ComponentName;

    .line 2810
    .line 2811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2812
    .line 2813
    .line 2814
    move-result v6

    .line 2815
    if-eqz v6, :cond_2e

    .line 2816
    .line 2817
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2818
    .line 2819
    .line 2820
    move-result-object v0

    .line 2821
    check-cast v0, Landroid/content/ComponentName;

    .line 2822
    .line 2823
    move-object v6, v0

    .line 2824
    goto :goto_18

    .line 2825
    :cond_2e
    move-object v6, v2

    .line 2826
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2827
    .line 2828
    .line 2829
    move-result v7

    .line 2830
    move-object v0, p0

    .line 2831
    move-object v1, v3

    .line 2832
    move v2, v4

    .line 2833
    move-object v3, v5

    .line 2834
    move-object v4, v6

    .line 2835
    move v5, v7

    .line 2836
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 2837
    .line 2838
    .line 2839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2840
    .line 2841
    .line 2842
    return v10

    .line 2843
    :pswitch_77
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2844
    .line 2845
    .line 2846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2847
    .line 2848
    .line 2849
    move-result v0

    .line 2850
    if-eqz v0, :cond_2f

    .line 2851
    .line 2852
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2853
    .line 2854
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v0

    .line 2858
    check-cast v0, Landroid/content/IntentFilter;

    .line 2859
    .line 2860
    move-object v3, v0

    .line 2861
    goto :goto_19

    .line 2862
    :cond_2f
    move-object v3, v2

    .line 2863
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2864
    .line 2865
    .line 2866
    move-result v4

    .line 2867
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2868
    .line 2869
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 2870
    .line 2871
    .line 2872
    move-result-object v5

    .line 2873
    check-cast v5, [Landroid/content/ComponentName;

    .line 2874
    .line 2875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2876
    .line 2877
    .line 2878
    move-result v6

    .line 2879
    if-eqz v6, :cond_30

    .line 2880
    .line 2881
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2882
    .line 2883
    .line 2884
    move-result-object v0

    .line 2885
    check-cast v0, Landroid/content/ComponentName;

    .line 2886
    .line 2887
    move-object v6, v0

    .line 2888
    goto :goto_1a

    .line 2889
    :cond_30
    move-object v6, v2

    .line 2890
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2891
    .line 2892
    .line 2893
    move-result v7

    .line 2894
    move-object v0, p0

    .line 2895
    move-object v1, v3

    .line 2896
    move v2, v4

    .line 2897
    move-object v3, v5

    .line 2898
    move-object v4, v6

    .line 2899
    move v5, v7

    .line 2900
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 2901
    .line 2902
    .line 2903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2904
    .line 2905
    .line 2906
    return v10

    .line 2907
    :pswitch_78
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2908
    .line 2909
    .line 2910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2911
    .line 2912
    .line 2913
    move-result v0

    .line 2914
    if-eqz v0, :cond_31

    .line 2915
    .line 2916
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2917
    .line 2918
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2919
    .line 2920
    .line 2921
    move-result-object v0

    .line 2922
    check-cast v0, Landroid/content/Intent;

    .line 2923
    .line 2924
    move-object v3, v0

    .line 2925
    goto :goto_1b

    .line 2926
    :cond_31
    move-object v3, v2

    .line 2927
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2928
    .line 2929
    .line 2930
    move-result-object v4

    .line 2931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2932
    .line 2933
    .line 2934
    move-result v5

    .line 2935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2936
    .line 2937
    .line 2938
    move-result v0

    .line 2939
    if-eqz v0, :cond_32

    .line 2940
    .line 2941
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2942
    .line 2943
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2944
    .line 2945
    .line 2946
    move-result-object v0

    .line 2947
    check-cast v0, Landroid/content/IntentFilter;

    .line 2948
    .line 2949
    move-object v6, v0

    .line 2950
    goto :goto_1c

    .line 2951
    :cond_32
    move-object v6, v2

    .line 2952
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2953
    .line 2954
    .line 2955
    move-result v7

    .line 2956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2957
    .line 2958
    .line 2959
    move-result v0

    .line 2960
    if-eqz v0, :cond_33

    .line 2961
    .line 2962
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2963
    .line 2964
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2965
    .line 2966
    .line 2967
    move-result-object v0

    .line 2968
    check-cast v0, Landroid/content/ComponentName;

    .line 2969
    .line 2970
    move-object v11, v0

    .line 2971
    goto :goto_1d

    .line 2972
    :cond_33
    move-object v11, v2

    .line 2973
    :goto_1d
    move-object v0, p0

    .line 2974
    move-object v1, v3

    .line 2975
    move-object v2, v4

    .line 2976
    move v3, v5

    .line 2977
    move-object v4, v6

    .line 2978
    move v5, v7

    .line 2979
    move-object v6, v11

    .line 2980
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 2981
    .line 2982
    .line 2983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2984
    .line 2985
    .line 2986
    return v10

    .line 2987
    :pswitch_79
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2988
    .line 2989
    .line 2990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 2991
    .line 2992
    .line 2993
    move-result v0

    .line 2994
    if-eqz v0, :cond_34

    .line 2995
    .line 2996
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2997
    .line 2998
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2999
    .line 3000
    .line 3001
    move-result-object v0

    .line 3002
    move-object v2, v0

    .line 3003
    check-cast v2, Landroid/content/Intent;

    .line 3004
    .line 3005
    :cond_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3006
    .line 3007
    .line 3008
    move-result-object v0

    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3010
    .line 3011
    .line 3012
    move-result v1

    .line 3013
    invoke-interface {p0, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    .line 3014
    .line 3015
    .line 3016
    move-result-object v0

    .line 3017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3018
    .line 3019
    .line 3020
    if-eqz v0, :cond_35

    .line 3021
    .line 3022
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3023
    .line 3024
    .line 3025
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3026
    .line 3027
    .line 3028
    goto :goto_1e

    .line 3029
    :cond_35
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3030
    .line 3031
    .line 3032
    :goto_1e
    return v10

    .line 3033
    :pswitch_7a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3034
    .line 3035
    .line 3036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3037
    .line 3038
    .line 3039
    move-result v0

    .line 3040
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V

    .line 3041
    .line 3042
    .line 3043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3044
    .line 3045
    .line 3046
    return v10

    .line 3047
    :pswitch_7b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3048
    .line 3049
    .line 3050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3051
    .line 3052
    .line 3053
    move-result-object v0

    .line 3054
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 3055
    .line 3056
    .line 3057
    move-result-object v0

    .line 3058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3059
    .line 3060
    .line 3061
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3062
    .line 3063
    .line 3064
    return v10

    .line 3065
    :pswitch_7c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3066
    .line 3067
    .line 3068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3069
    .line 3070
    .line 3071
    move-result v0

    .line 3072
    if-eqz v0, :cond_36

    .line 3073
    .line 3074
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3075
    .line 3076
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3077
    .line 3078
    .line 3079
    move-result-object v0

    .line 3080
    move-object v2, v0

    .line 3081
    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 3082
    .line 3083
    :cond_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3084
    .line 3085
    .line 3086
    move-result-object v0

    .line 3087
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    .line 3088
    .line 3089
    .line 3090
    move-result-object v0

    .line 3091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3092
    .line 3093
    .line 3094
    move-result v3

    .line 3095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3096
    .line 3097
    .line 3098
    move-result v1

    .line 3099
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 3100
    .line 3101
    .line 3102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3103
    .line 3104
    .line 3105
    return v10

    .line 3106
    :pswitch_7d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3107
    .line 3108
    .line 3109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3110
    .line 3111
    .line 3112
    move-result-object v2

    .line 3113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3114
    .line 3115
    .line 3116
    move-result v3

    .line 3117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3118
    .line 3119
    .line 3120
    move-result-object v0

    .line 3121
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    .line 3122
    .line 3123
    .line 3124
    move-result-object v4

    .line 3125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3126
    .line 3127
    .line 3128
    move-result v5

    .line 3129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3130
    .line 3131
    .line 3132
    move-result v6

    .line 3133
    move-object v0, p0

    .line 3134
    move-object v1, v2

    .line 3135
    move v2, v3

    .line 3136
    move-object v3, v4

    .line 3137
    move v4, v5

    .line 3138
    move v5, v6

    .line 3139
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 3140
    .line 3141
    .line 3142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3143
    .line 3144
    .line 3145
    return v10

    .line 3146
    :pswitch_7e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3147
    .line 3148
    .line 3149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3150
    .line 3151
    .line 3152
    move-result-object v0

    .line 3153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3154
    .line 3155
    .line 3156
    move-result v2

    .line 3157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3158
    .line 3159
    .line 3160
    move-result-object v1

    .line 3161
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V

    .line 3162
    .line 3163
    .line 3164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3165
    .line 3166
    .line 3167
    return v10

    .line 3168
    :pswitch_7f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3169
    .line 3170
    .line 3171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3172
    .line 3173
    .line 3174
    move-result-object v0

    .line 3175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3176
    .line 3177
    .line 3178
    move-result-object v1

    .line 3179
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    .line 3181
    .line 3182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3183
    .line 3184
    .line 3185
    return v10

    .line 3186
    :pswitch_80
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3187
    .line 3188
    .line 3189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3190
    .line 3191
    .line 3192
    move-result v0

    .line 3193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3194
    .line 3195
    .line 3196
    move-result v1

    .line 3197
    if-eqz v1, :cond_37

    .line 3198
    .line 3199
    move v11, v10

    .line 3200
    :cond_37
    invoke-interface {p0, v0, v11}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V

    .line 3201
    .line 3202
    .line 3203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3204
    .line 3205
    .line 3206
    return v10

    .line 3207
    :pswitch_81
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3208
    .line 3209
    .line 3210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3211
    .line 3212
    .line 3213
    move-result-object v2

    .line 3214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 3215
    .line 3216
    .line 3217
    move-result-object v0

    .line 3218
    invoke-static {v0}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    .line 3219
    .line 3220
    .line 3221
    move-result-object v3

    .line 3222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3223
    .line 3224
    .line 3225
    move-result v4

    .line 3226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3227
    .line 3228
    .line 3229
    move-result-object v5

    .line 3230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3231
    .line 3232
    .line 3233
    move-result v6

    .line 3234
    move-object v0, p0

    .line 3235
    move-object v1, v2

    .line 3236
    move-object v2, v3

    .line 3237
    move v3, v4

    .line 3238
    move-object v4, v5

    .line 3239
    move v5, v6

    .line 3240
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    .line 3241
    .line 3242
    .line 3243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3244
    .line 3245
    .line 3246
    return v10

    .line 3247
    :pswitch_82
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3248
    .line 3249
    .line 3250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3251
    .line 3252
    .line 3253
    move-result-object v0

    .line 3254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3255
    .line 3256
    .line 3257
    move-result v1

    .line 3258
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 3259
    .line 3260
    .line 3261
    move-result-object v0

    .line 3262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3263
    .line 3264
    .line 3265
    if-eqz v0, :cond_38

    .line 3266
    .line 3267
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3268
    .line 3269
    .line 3270
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3271
    .line 3272
    .line 3273
    goto :goto_1f

    .line 3274
    :cond_38
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3275
    .line 3276
    .line 3277
    :goto_1f
    return v10

    .line 3278
    :pswitch_83
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    .line 3280
    .line 3281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3282
    .line 3283
    .line 3284
    move-result v0

    .line 3285
    if-eqz v0, :cond_39

    .line 3286
    .line 3287
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3288
    .line 3289
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3290
    .line 3291
    .line 3292
    move-result-object v0

    .line 3293
    move-object v2, v0

    .line 3294
    check-cast v2, Landroid/content/ComponentName;

    .line 3295
    .line 3296
    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3297
    .line 3298
    .line 3299
    move-result v0

    .line 3300
    invoke-interface {p0, v2, v0}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    .line 3301
    .line 3302
    .line 3303
    move-result-object v0

    .line 3304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3305
    .line 3306
    .line 3307
    if-eqz v0, :cond_3a

    .line 3308
    .line 3309
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    .line 3311
    .line 3312
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3313
    .line 3314
    .line 3315
    goto :goto_20

    .line 3316
    :cond_3a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3317
    .line 3318
    .line 3319
    :goto_20
    return v10

    .line 3320
    :pswitch_84
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3321
    .line 3322
    .line 3323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3324
    .line 3325
    .line 3326
    move-result-object v0

    .line 3327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3328
    .line 3329
    .line 3330
    move-result v2

    .line 3331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3332
    .line 3333
    .line 3334
    move-result v3

    .line 3335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3336
    .line 3337
    .line 3338
    move-result-object v1

    .line 3339
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 3340
    .line 3341
    .line 3342
    move-result-object v0

    .line 3343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3344
    .line 3345
    .line 3346
    if-eqz v0, :cond_3b

    .line 3347
    .line 3348
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3349
    .line 3350
    .line 3351
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3352
    .line 3353
    .line 3354
    goto :goto_21

    .line 3355
    :cond_3b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3356
    .line 3357
    .line 3358
    :goto_21
    return v10

    .line 3359
    :pswitch_85
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3360
    .line 3361
    .line 3362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3363
    .line 3364
    .line 3365
    move-result-object v0

    .line 3366
    sget-object v2, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3367
    .line 3368
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 3369
    .line 3370
    .line 3371
    move-result-object v1

    .line 3372
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 3373
    .line 3374
    .line 3375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3376
    .line 3377
    .line 3378
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3379
    .line 3380
    .line 3381
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3382
    .line 3383
    .line 3384
    return v10

    .line 3385
    :pswitch_86
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3386
    .line 3387
    .line 3388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3389
    .line 3390
    .line 3391
    move-result-object v0

    .line 3392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3393
    .line 3394
    .line 3395
    move-result v2

    .line 3396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3397
    .line 3398
    .line 3399
    move-result v1

    .line 3400
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    .line 3401
    .line 3402
    .line 3403
    move-result-object v0

    .line 3404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3405
    .line 3406
    .line 3407
    if-eqz v0, :cond_3c

    .line 3408
    .line 3409
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3410
    .line 3411
    .line 3412
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3413
    .line 3414
    .line 3415
    goto :goto_22

    .line 3416
    :cond_3c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3417
    .line 3418
    .line 3419
    :goto_22
    return v10

    .line 3420
    :pswitch_87
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3421
    .line 3422
    .line 3423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3424
    .line 3425
    .line 3426
    move-result v0

    .line 3427
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;

    .line 3428
    .line 3429
    .line 3430
    move-result-object v0

    .line 3431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3432
    .line 3433
    .line 3434
    if-eqz v0, :cond_3d

    .line 3435
    .line 3436
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3437
    .line 3438
    .line 3439
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3440
    .line 3441
    .line 3442
    goto :goto_23

    .line 3443
    :cond_3d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3444
    .line 3445
    .line 3446
    :goto_23
    return v10

    .line 3447
    :pswitch_88
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3448
    .line 3449
    .line 3450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3451
    .line 3452
    .line 3453
    move-result v0

    .line 3454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3455
    .line 3456
    .line 3457
    move-result v1

    .line 3458
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    .line 3459
    .line 3460
    .line 3461
    move-result-object v0

    .line 3462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3463
    .line 3464
    .line 3465
    if-eqz v0, :cond_3e

    .line 3466
    .line 3467
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3468
    .line 3469
    .line 3470
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3471
    .line 3472
    .line 3473
    goto :goto_24

    .line 3474
    :cond_3e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3475
    .line 3476
    .line 3477
    :goto_24
    return v10

    .line 3478
    :pswitch_89
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3479
    .line 3480
    .line 3481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 3482
    .line 3483
    .line 3484
    move-result-object v0

    .line 3485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3486
    .line 3487
    .line 3488
    move-result v2

    .line 3489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3490
    .line 3491
    .line 3492
    move-result v1

    .line 3493
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 3494
    .line 3495
    .line 3496
    move-result-object v0

    .line 3497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3498
    .line 3499
    .line 3500
    if-eqz v0, :cond_3f

    .line 3501
    .line 3502
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3503
    .line 3504
    .line 3505
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3506
    .line 3507
    .line 3508
    goto :goto_25

    .line 3509
    :cond_3f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3510
    .line 3511
    .line 3512
    :goto_25
    return v10

    .line 3513
    :pswitch_8a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3514
    .line 3515
    .line 3516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3517
    .line 3518
    .line 3519
    move-result v0

    .line 3520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3521
    .line 3522
    .line 3523
    move-result v1

    .line 3524
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    .line 3525
    .line 3526
    .line 3527
    move-result-object v0

    .line 3528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3529
    .line 3530
    .line 3531
    if-eqz v0, :cond_40

    .line 3532
    .line 3533
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3534
    .line 3535
    .line 3536
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3537
    .line 3538
    .line 3539
    goto :goto_26

    .line 3540
    :cond_40
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3541
    .line 3542
    .line 3543
    :goto_26
    return v10

    .line 3544
    :pswitch_8b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3545
    .line 3546
    .line 3547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3548
    .line 3549
    .line 3550
    move-result v0

    .line 3551
    if-eqz v0, :cond_41

    .line 3552
    .line 3553
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3554
    .line 3555
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3556
    .line 3557
    .line 3558
    move-result-object v0

    .line 3559
    move-object v2, v0

    .line 3560
    check-cast v2, Landroid/content/Intent;

    .line 3561
    .line 3562
    :cond_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3563
    .line 3564
    .line 3565
    move-result-object v0

    .line 3566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3567
    .line 3568
    .line 3569
    move-result v3

    .line 3570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3571
    .line 3572
    .line 3573
    move-result v1

    .line 3574
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 3575
    .line 3576
    .line 3577
    move-result-object v0

    .line 3578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3579
    .line 3580
    .line 3581
    if-eqz v0, :cond_42

    .line 3582
    .line 3583
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3584
    .line 3585
    .line 3586
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3587
    .line 3588
    .line 3589
    goto :goto_27

    .line 3590
    :cond_42
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3591
    .line 3592
    .line 3593
    :goto_27
    return v10

    .line 3594
    :pswitch_8c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3595
    .line 3596
    .line 3597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3598
    .line 3599
    .line 3600
    move-result v0

    .line 3601
    if-eqz v0, :cond_43

    .line 3602
    .line 3603
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3604
    .line 3605
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3606
    .line 3607
    .line 3608
    move-result-object v0

    .line 3609
    move-object v2, v0

    .line 3610
    check-cast v2, Landroid/content/Intent;

    .line 3611
    .line 3612
    :cond_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3613
    .line 3614
    .line 3615
    move-result-object v0

    .line 3616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3617
    .line 3618
    .line 3619
    move-result v3

    .line 3620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3621
    .line 3622
    .line 3623
    move-result v1

    .line 3624
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 3625
    .line 3626
    .line 3627
    move-result-object v0

    .line 3628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3629
    .line 3630
    .line 3631
    if-eqz v0, :cond_44

    .line 3632
    .line 3633
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3634
    .line 3635
    .line 3636
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3637
    .line 3638
    .line 3639
    goto :goto_28

    .line 3640
    :cond_44
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3641
    .line 3642
    .line 3643
    :goto_28
    return v10

    .line 3644
    :pswitch_8d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3645
    .line 3646
    .line 3647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3648
    .line 3649
    .line 3650
    move-result v0

    .line 3651
    if-eqz v0, :cond_45

    .line 3652
    .line 3653
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3654
    .line 3655
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3656
    .line 3657
    .line 3658
    move-result-object v0

    .line 3659
    move-object v2, v0

    .line 3660
    check-cast v2, Landroid/content/Intent;

    .line 3661
    .line 3662
    :cond_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3663
    .line 3664
    .line 3665
    move-result-object v0

    .line 3666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3667
    .line 3668
    .line 3669
    move-result v3

    .line 3670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3671
    .line 3672
    .line 3673
    move-result v1

    .line 3674
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    .line 3675
    .line 3676
    .line 3677
    move-result-object v0

    .line 3678
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3679
    .line 3680
    .line 3681
    if-eqz v0, :cond_46

    .line 3682
    .line 3683
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3684
    .line 3685
    .line 3686
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3687
    .line 3688
    .line 3689
    goto :goto_29

    .line 3690
    :cond_46
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3691
    .line 3692
    .line 3693
    :goto_29
    return v10

    .line 3694
    :pswitch_8e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3695
    .line 3696
    .line 3697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3698
    .line 3699
    .line 3700
    move-result v0

    .line 3701
    if-eqz v0, :cond_47

    .line 3702
    .line 3703
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3704
    .line 3705
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3706
    .line 3707
    .line 3708
    move-result-object v0

    .line 3709
    move-object v2, v0

    .line 3710
    check-cast v2, Landroid/content/Intent;

    .line 3711
    .line 3712
    :cond_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3713
    .line 3714
    .line 3715
    move-result-object v0

    .line 3716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3717
    .line 3718
    .line 3719
    move-result v3

    .line 3720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3721
    .line 3722
    .line 3723
    move-result v1

    .line 3724
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 3725
    .line 3726
    .line 3727
    move-result-object v0

    .line 3728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3729
    .line 3730
    .line 3731
    if-eqz v0, :cond_48

    .line 3732
    .line 3733
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3734
    .line 3735
    .line 3736
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3737
    .line 3738
    .line 3739
    goto :goto_2a

    .line 3740
    :cond_48
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3741
    .line 3742
    .line 3743
    :goto_2a
    return v10

    .line 3744
    :pswitch_8f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3745
    .line 3746
    .line 3747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3748
    .line 3749
    .line 3750
    move-result v0

    .line 3751
    if-eqz v0, :cond_49

    .line 3752
    .line 3753
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3754
    .line 3755
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3756
    .line 3757
    .line 3758
    move-result-object v0

    .line 3759
    check-cast v0, Landroid/content/ComponentName;

    .line 3760
    .line 3761
    move-object v3, v0

    .line 3762
    goto :goto_2b

    .line 3763
    :cond_49
    move-object v3, v2

    .line 3764
    :goto_2b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3765
    .line 3766
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 3767
    .line 3768
    .line 3769
    move-result-object v4

    .line 3770
    check-cast v4, [Landroid/content/Intent;

    .line 3771
    .line 3772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 3773
    .line 3774
    .line 3775
    move-result-object v5

    .line 3776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3777
    .line 3778
    .line 3779
    move-result v6

    .line 3780
    if-eqz v6, :cond_4a

    .line 3781
    .line 3782
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3783
    .line 3784
    .line 3785
    move-result-object v0

    .line 3786
    check-cast v0, Landroid/content/Intent;

    .line 3787
    .line 3788
    move-object v6, v0

    .line 3789
    goto :goto_2c

    .line 3790
    :cond_4a
    move-object v6, v2

    .line 3791
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3792
    .line 3793
    .line 3794
    move-result-object v7

    .line 3795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3796
    .line 3797
    .line 3798
    move-result v12

    .line 3799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3800
    .line 3801
    .line 3802
    move-result v13

    .line 3803
    move-object v0, p0

    .line 3804
    move-object v1, v3

    .line 3805
    move-object v2, v4

    .line 3806
    move-object v3, v5

    .line 3807
    move-object v4, v6

    .line 3808
    move-object v5, v7

    .line 3809
    move v6, v12

    .line 3810
    move v7, v13

    .line 3811
    invoke-interface/range {v0 .. v7}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 3812
    .line 3813
    .line 3814
    move-result-object v0

    .line 3815
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3816
    .line 3817
    .line 3818
    if-eqz v0, :cond_4b

    .line 3819
    .line 3820
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3821
    .line 3822
    .line 3823
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3824
    .line 3825
    .line 3826
    goto :goto_2d

    .line 3827
    :cond_4b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3828
    .line 3829
    .line 3830
    :goto_2d
    return v10

    .line 3831
    :pswitch_90
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3832
    .line 3833
    .line 3834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3835
    .line 3836
    .line 3837
    move-result v0

    .line 3838
    if-eqz v0, :cond_4c

    .line 3839
    .line 3840
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3841
    .line 3842
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3843
    .line 3844
    .line 3845
    move-result-object v0

    .line 3846
    move-object v2, v0

    .line 3847
    check-cast v2, Landroid/content/Intent;

    .line 3848
    .line 3849
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3850
    .line 3851
    .line 3852
    move-result-object v0

    .line 3853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3854
    .line 3855
    .line 3856
    move-result v3

    .line 3857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3858
    .line 3859
    .line 3860
    move-result v1

    .line 3861
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 3862
    .line 3863
    .line 3864
    move-result-object v0

    .line 3865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    .line 3867
    .line 3868
    if-eqz v0, :cond_4d

    .line 3869
    .line 3870
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3871
    .line 3872
    .line 3873
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3874
    .line 3875
    .line 3876
    goto :goto_2e

    .line 3877
    :cond_4d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3878
    .line 3879
    .line 3880
    :goto_2e
    return v10

    .line 3881
    :pswitch_91
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3882
    .line 3883
    .line 3884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3885
    .line 3886
    .line 3887
    move-result v0

    .line 3888
    if-eqz v0, :cond_4e

    .line 3889
    .line 3890
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3891
    .line 3892
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3893
    .line 3894
    .line 3895
    move-result-object v0

    .line 3896
    move-object v2, v0

    .line 3897
    check-cast v2, Landroid/content/Intent;

    .line 3898
    .line 3899
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3900
    .line 3901
    .line 3902
    move-result-object v0

    .line 3903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3904
    .line 3905
    .line 3906
    move-result v3

    .line 3907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3908
    .line 3909
    .line 3910
    move-result v1

    .line 3911
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    .line 3912
    .line 3913
    .line 3914
    move-result v0

    .line 3915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3916
    .line 3917
    .line 3918
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3919
    .line 3920
    .line 3921
    return v10

    .line 3922
    :pswitch_92
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3923
    .line 3924
    .line 3925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3926
    .line 3927
    .line 3928
    move-result v0

    .line 3929
    if-eqz v0, :cond_4f

    .line 3930
    .line 3931
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3932
    .line 3933
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3934
    .line 3935
    .line 3936
    move-result-object v0

    .line 3937
    move-object v2, v0

    .line 3938
    check-cast v2, Landroid/content/Intent;

    .line 3939
    .line 3940
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3941
    .line 3942
    .line 3943
    move-result v0

    .line 3944
    invoke-interface {p0, v2, v0}, Landroid/content/pm/IPackageManager;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 3945
    .line 3946
    .line 3947
    move-result-object v0

    .line 3948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3949
    .line 3950
    .line 3951
    if-eqz v0, :cond_50

    .line 3952
    .line 3953
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3954
    .line 3955
    .line 3956
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3957
    .line 3958
    .line 3959
    goto :goto_2f

    .line 3960
    :cond_50
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 3961
    .line 3962
    .line 3963
    :goto_2f
    return v10

    .line 3964
    :pswitch_93
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3965
    .line 3966
    .line 3967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3968
    .line 3969
    .line 3970
    move-result v0

    .line 3971
    if-eqz v0, :cond_51

    .line 3972
    .line 3973
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3974
    .line 3975
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3976
    .line 3977
    .line 3978
    move-result-object v0

    .line 3979
    move-object v2, v0

    .line 3980
    check-cast v2, Landroid/content/Intent;

    .line 3981
    .line 3982
    :cond_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3983
    .line 3984
    .line 3985
    move-result-object v0

    .line 3986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3987
    .line 3988
    .line 3989
    move-result v3

    .line 3990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 3991
    .line 3992
    .line 3993
    move-result v1

    .line 3994
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    .line 3995
    .line 3996
    .line 3997
    move-result-object v0

    .line 3998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3999
    .line 4000
    .line 4001
    if-eqz v0, :cond_52

    .line 4002
    .line 4003
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4004
    .line 4005
    .line 4006
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4007
    .line 4008
    .line 4009
    goto :goto_30

    .line 4010
    :cond_52
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    .line 4012
    .line 4013
    :goto_30
    return v10

    .line 4014
    :pswitch_94
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4015
    .line 4016
    .line 4017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4018
    .line 4019
    .line 4020
    move-result-object v0

    .line 4021
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    .line 4022
    .line 4023
    .line 4024
    move-result-object v0

    .line 4025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4026
    .line 4027
    .line 4028
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4029
    .line 4030
    .line 4031
    return v10

    .line 4032
    :pswitch_95
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4033
    .line 4034
    .line 4035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4036
    .line 4037
    .line 4038
    move-result v0

    .line 4039
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    .line 4040
    .line 4041
    .line 4042
    move-result v0

    .line 4043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4044
    .line 4045
    .line 4046
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4047
    .line 4048
    .line 4049
    return v10

    .line 4050
    :pswitch_96
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4051
    .line 4052
    .line 4053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4054
    .line 4055
    .line 4056
    move-result v0

    .line 4057
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getPrivateFlagsForUid(I)I

    .line 4058
    .line 4059
    .line 4060
    move-result v0

    .line 4061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4062
    .line 4063
    .line 4064
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4065
    .line 4066
    .line 4067
    return v10

    .line 4068
    :pswitch_97
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4069
    .line 4070
    .line 4071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4072
    .line 4073
    .line 4074
    move-result v0

    .line 4075
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getFlagsForUid(I)I

    .line 4076
    .line 4077
    .line 4078
    move-result v0

    .line 4079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4080
    .line 4081
    .line 4082
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4083
    .line 4084
    .line 4085
    return v10

    .line 4086
    :pswitch_98
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4087
    .line 4088
    .line 4089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4090
    .line 4091
    .line 4092
    move-result-object v0

    .line 4093
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    .line 4094
    .line 4095
    .line 4096
    move-result v0

    .line 4097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4098
    .line 4099
    .line 4100
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4101
    .line 4102
    .line 4103
    return v10

    .line 4104
    :pswitch_99
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4105
    .line 4106
    .line 4107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 4108
    .line 4109
    .line 4110
    move-result-object v0

    .line 4111
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getNamesForUids([I)[Ljava/lang/String;

    .line 4112
    .line 4113
    .line 4114
    move-result-object v0

    .line 4115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4116
    .line 4117
    .line 4118
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4119
    .line 4120
    .line 4121
    return v10

    .line 4122
    :pswitch_9a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4123
    .line 4124
    .line 4125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4126
    .line 4127
    .line 4128
    move-result v0

    .line 4129
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 4130
    .line 4131
    .line 4132
    move-result-object v0

    .line 4133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4134
    .line 4135
    .line 4136
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4137
    .line 4138
    .line 4139
    return v10

    .line 4140
    :pswitch_9b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4141
    .line 4142
    .line 4143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4144
    .line 4145
    .line 4146
    move-result v0

    .line 4147
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 4148
    .line 4149
    .line 4150
    move-result-object v0

    .line 4151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4152
    .line 4153
    .line 4154
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4155
    .line 4156
    .line 4157
    return v10

    .line 4158
    :pswitch_9c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4159
    .line 4160
    .line 4161
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    .line 4162
    .line 4163
    .line 4164
    move-result-object v0

    .line 4165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4166
    .line 4167
    .line 4168
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4169
    .line 4170
    .line 4171
    return v10

    .line 4172
    :pswitch_9d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4173
    .line 4174
    .line 4175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4176
    .line 4177
    .line 4178
    move-result v0

    .line 4179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4180
    .line 4181
    .line 4182
    move-result v1

    .line 4183
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 4184
    .line 4185
    .line 4186
    move-result v0

    .line 4187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4188
    .line 4189
    .line 4190
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4191
    .line 4192
    .line 4193
    return v10

    .line 4194
    :pswitch_9e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4195
    .line 4196
    .line 4197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4198
    .line 4199
    .line 4200
    move-result-object v0

    .line 4201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4202
    .line 4203
    .line 4204
    move-result-object v1

    .line 4205
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    .line 4207
    .line 4208
    move-result v0

    .line 4209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4210
    .line 4211
    .line 4212
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4213
    .line 4214
    .line 4215
    return v10

    .line 4216
    :pswitch_9f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4217
    .line 4218
    .line 4219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4220
    .line 4221
    .line 4222
    move-result-object v0

    .line 4223
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    .line 4224
    .line 4225
    .line 4226
    move-result v0

    .line 4227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4228
    .line 4229
    .line 4230
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4231
    .line 4232
    .line 4233
    return v10

    .line 4234
    :pswitch_a0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4235
    .line 4236
    .line 4237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4238
    .line 4239
    .line 4240
    move-result-object v0

    .line 4241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4242
    .line 4243
    .line 4244
    move-result-object v2

    .line 4245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4246
    .line 4247
    .line 4248
    move-result v1

    .line 4249
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4250
    .line 4251
    .line 4252
    move-result v0

    .line 4253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4254
    .line 4255
    .line 4256
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4257
    .line 4258
    .line 4259
    return v10

    .line 4260
    :pswitch_a1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4261
    .line 4262
    .line 4263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4264
    .line 4265
    .line 4266
    move-result v0

    .line 4267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4268
    .line 4269
    .line 4270
    move-result v2

    .line 4271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4272
    .line 4273
    .line 4274
    move-result v1

    .line 4275
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->updatePermissionFlagsForAllApps(III)V

    .line 4276
    .line 4277
    .line 4278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4279
    .line 4280
    .line 4281
    return v10

    .line 4282
    :pswitch_a2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4283
    .line 4284
    .line 4285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4286
    .line 4287
    .line 4288
    move-result-object v2

    .line 4289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4290
    .line 4291
    .line 4292
    move-result-object v3

    .line 4293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4294
    .line 4295
    .line 4296
    move-result v4

    .line 4297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4298
    .line 4299
    .line 4300
    move-result v5

    .line 4301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4302
    .line 4303
    .line 4304
    move-result v6

    .line 4305
    move-object v0, p0

    .line 4306
    move-object v1, v2

    .line 4307
    move-object v2, v3

    .line 4308
    move v3, v4

    .line 4309
    move v4, v5

    .line 4310
    move v5, v6

    .line 4311
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 4312
    .line 4313
    .line 4314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    .line 4316
    .line 4317
    return v10

    .line 4318
    :pswitch_a3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4319
    .line 4320
    .line 4321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4322
    .line 4323
    .line 4324
    move-result-object v0

    .line 4325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4326
    .line 4327
    .line 4328
    move-result-object v2

    .line 4329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4330
    .line 4331
    .line 4332
    move-result v1

    .line 4333
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4334
    .line 4335
    .line 4336
    move-result v0

    .line 4337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4338
    .line 4339
    .line 4340
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4341
    .line 4342
    .line 4343
    return v10

    .line 4344
    :pswitch_a4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4345
    .line 4346
    .line 4347
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->resetRuntimePermissions()V

    .line 4348
    .line 4349
    .line 4350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4351
    .line 4352
    .line 4353
    return v10

    .line 4354
    :pswitch_a5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4355
    .line 4356
    .line 4357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4358
    .line 4359
    .line 4360
    move-result-object v0

    .line 4361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4362
    .line 4363
    .line 4364
    move-result-object v2

    .line 4365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4366
    .line 4367
    .line 4368
    move-result v1

    .line 4369
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4370
    .line 4371
    .line 4372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4373
    .line 4374
    .line 4375
    return v10

    .line 4376
    :pswitch_a6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4377
    .line 4378
    .line 4379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4380
    .line 4381
    .line 4382
    move-result-object v0

    .line 4383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4384
    .line 4385
    .line 4386
    move-result-object v2

    .line 4387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4388
    .line 4389
    .line 4390
    move-result v1

    .line 4391
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4392
    .line 4393
    .line 4394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4395
    .line 4396
    .line 4397
    return v10

    .line 4398
    :pswitch_a7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4399
    .line 4400
    .line 4401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4402
    .line 4403
    .line 4404
    move-result-object v0

    .line 4405
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V

    .line 4406
    .line 4407
    .line 4408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4409
    .line 4410
    .line 4411
    return v10

    .line 4412
    :pswitch_a8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4413
    .line 4414
    .line 4415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4416
    .line 4417
    .line 4418
    move-result v0

    .line 4419
    if-eqz v0, :cond_53

    .line 4420
    .line 4421
    sget-object v0, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4422
    .line 4423
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4424
    .line 4425
    .line 4426
    move-result-object v0

    .line 4427
    move-object v2, v0

    .line 4428
    check-cast v2, Landroid/content/pm/PermissionInfo;

    .line 4429
    .line 4430
    :cond_53
    invoke-interface {p0, v2}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    .line 4431
    .line 4432
    .line 4433
    move-result v0

    .line 4434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4435
    .line 4436
    .line 4437
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4438
    .line 4439
    .line 4440
    return v10

    .line 4441
    :pswitch_a9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4442
    .line 4443
    .line 4444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4445
    .line 4446
    .line 4447
    move-result-object v0

    .line 4448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4449
    .line 4450
    .line 4451
    move-result v1

    .line 4452
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 4453
    .line 4454
    .line 4455
    move-result v0

    .line 4456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4457
    .line 4458
    .line 4459
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4460
    .line 4461
    .line 4462
    return v10

    .line 4463
    :pswitch_aa
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4464
    .line 4465
    .line 4466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4467
    .line 4468
    .line 4469
    move-result-object v0

    .line 4470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4471
    .line 4472
    .line 4473
    move-result-object v2

    .line 4474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4475
    .line 4476
    .line 4477
    move-result v1

    .line 4478
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4479
    .line 4480
    .line 4481
    move-result v0

    .line 4482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4483
    .line 4484
    .line 4485
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4486
    .line 4487
    .line 4488
    return v10

    .line 4489
    :pswitch_ab
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4490
    .line 4491
    .line 4492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4493
    .line 4494
    .line 4495
    move-result v0

    .line 4496
    if-eqz v0, :cond_54

    .line 4497
    .line 4498
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4499
    .line 4500
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4501
    .line 4502
    .line 4503
    move-result-object v0

    .line 4504
    move-object v2, v0

    .line 4505
    check-cast v2, Landroid/content/ComponentName;

    .line 4506
    .line 4507
    :cond_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4508
    .line 4509
    .line 4510
    move-result v0

    .line 4511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4512
    .line 4513
    .line 4514
    move-result v1

    .line 4515
    invoke-interface {p0, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    .line 4516
    .line 4517
    .line 4518
    move-result-object v0

    .line 4519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4520
    .line 4521
    .line 4522
    if-eqz v0, :cond_55

    .line 4523
    .line 4524
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4525
    .line 4526
    .line 4527
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4528
    .line 4529
    .line 4530
    goto :goto_31

    .line 4531
    :cond_55
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4532
    .line 4533
    .line 4534
    :goto_31
    return v10

    .line 4535
    :pswitch_ac
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4536
    .line 4537
    .line 4538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4539
    .line 4540
    .line 4541
    move-result v0

    .line 4542
    if-eqz v0, :cond_56

    .line 4543
    .line 4544
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4545
    .line 4546
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4547
    .line 4548
    .line 4549
    move-result-object v0

    .line 4550
    move-object v2, v0

    .line 4551
    check-cast v2, Landroid/content/ComponentName;

    .line 4552
    .line 4553
    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4554
    .line 4555
    .line 4556
    move-result v0

    .line 4557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4558
    .line 4559
    .line 4560
    move-result v1

    .line 4561
    invoke-interface {p0, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    .line 4562
    .line 4563
    .line 4564
    move-result-object v0

    .line 4565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4566
    .line 4567
    .line 4568
    if-eqz v0, :cond_57

    .line 4569
    .line 4570
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4571
    .line 4572
    .line 4573
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4574
    .line 4575
    .line 4576
    goto :goto_32

    .line 4577
    :cond_57
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4578
    .line 4579
    .line 4580
    :goto_32
    return v10

    .line 4581
    :pswitch_ad
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4582
    .line 4583
    .line 4584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4585
    .line 4586
    .line 4587
    move-result v0

    .line 4588
    if-eqz v0, :cond_58

    .line 4589
    .line 4590
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4591
    .line 4592
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4593
    .line 4594
    .line 4595
    move-result-object v0

    .line 4596
    move-object v2, v0

    .line 4597
    check-cast v2, Landroid/content/ComponentName;

    .line 4598
    .line 4599
    :cond_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4600
    .line 4601
    .line 4602
    move-result v0

    .line 4603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4604
    .line 4605
    .line 4606
    move-result v1

    .line 4607
    invoke-interface {p0, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    .line 4608
    .line 4609
    .line 4610
    move-result-object v0

    .line 4611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4612
    .line 4613
    .line 4614
    if-eqz v0, :cond_59

    .line 4615
    .line 4616
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4617
    .line 4618
    .line 4619
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4620
    .line 4621
    .line 4622
    goto :goto_33

    .line 4623
    :cond_59
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4624
    .line 4625
    .line 4626
    :goto_33
    return v10

    .line 4627
    :pswitch_ae
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4628
    .line 4629
    .line 4630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4631
    .line 4632
    .line 4633
    move-result v0

    .line 4634
    if-eqz v0, :cond_5a

    .line 4635
    .line 4636
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4637
    .line 4638
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4639
    .line 4640
    .line 4641
    move-result-object v0

    .line 4642
    check-cast v0, Landroid/content/ComponentName;

    .line 4643
    .line 4644
    goto :goto_34

    .line 4645
    :cond_5a
    move-object v0, v2

    .line 4646
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4647
    .line 4648
    .line 4649
    move-result v3

    .line 4650
    if-eqz v3, :cond_5b

    .line 4651
    .line 4652
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4653
    .line 4654
    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4655
    .line 4656
    .line 4657
    move-result-object v2

    .line 4658
    check-cast v2, Landroid/content/Intent;

    .line 4659
    .line 4660
    :cond_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4661
    .line 4662
    .line 4663
    move-result-object v1

    .line 4664
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    .line 4665
    .line 4666
    .line 4667
    move-result v0

    .line 4668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4669
    .line 4670
    .line 4671
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4672
    .line 4673
    .line 4674
    return v10

    .line 4675
    :pswitch_af
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4676
    .line 4677
    .line 4678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4679
    .line 4680
    .line 4681
    move-result v0

    .line 4682
    if-eqz v0, :cond_5c

    .line 4683
    .line 4684
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4685
    .line 4686
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4687
    .line 4688
    .line 4689
    move-result-object v0

    .line 4690
    move-object v2, v0

    .line 4691
    check-cast v2, Landroid/content/ComponentName;

    .line 4692
    .line 4693
    :cond_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4694
    .line 4695
    .line 4696
    move-result v0

    .line 4697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4698
    .line 4699
    .line 4700
    move-result v1

    .line 4701
    invoke-interface {p0, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    .line 4702
    .line 4703
    .line 4704
    move-result-object v0

    .line 4705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4706
    .line 4707
    .line 4708
    if-eqz v0, :cond_5d

    .line 4709
    .line 4710
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4711
    .line 4712
    .line 4713
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4714
    .line 4715
    .line 4716
    goto :goto_35

    .line 4717
    :cond_5d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4718
    .line 4719
    .line 4720
    :goto_35
    return v10

    .line 4721
    :pswitch_b0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4722
    .line 4723
    .line 4724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4725
    .line 4726
    .line 4727
    move-result-object v0

    .line 4728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4729
    .line 4730
    .line 4731
    move-result v2

    .line 4732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4733
    .line 4734
    .line 4735
    move-result v1

    .line 4736
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 4737
    .line 4738
    .line 4739
    move-result-object v0

    .line 4740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4741
    .line 4742
    .line 4743
    if-eqz v0, :cond_5e

    .line 4744
    .line 4745
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4746
    .line 4747
    .line 4748
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4749
    .line 4750
    .line 4751
    goto :goto_36

    .line 4752
    :cond_5e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4753
    .line 4754
    .line 4755
    :goto_36
    return v10

    .line 4756
    :pswitch_b1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4757
    .line 4758
    .line 4759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4760
    .line 4761
    .line 4762
    move-result v0

    .line 4763
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    .line 4764
    .line 4765
    .line 4766
    move-result-object v0

    .line 4767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4768
    .line 4769
    .line 4770
    if-eqz v0, :cond_5f

    .line 4771
    .line 4772
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4773
    .line 4774
    .line 4775
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4776
    .line 4777
    .line 4778
    goto :goto_37

    .line 4779
    :cond_5f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4780
    .line 4781
    .line 4782
    :goto_37
    return v10

    .line 4783
    :pswitch_b2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4784
    .line 4785
    .line 4786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4787
    .line 4788
    .line 4789
    move-result-object v0

    .line 4790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4791
    .line 4792
    .line 4793
    move-result v1

    .line 4794
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    .line 4795
    .line 4796
    .line 4797
    move-result-object v0

    .line 4798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4799
    .line 4800
    .line 4801
    if-eqz v0, :cond_60

    .line 4802
    .line 4803
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4804
    .line 4805
    .line 4806
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4807
    .line 4808
    .line 4809
    goto :goto_38

    .line 4810
    :cond_60
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4811
    .line 4812
    .line 4813
    :goto_38
    return v10

    .line 4814
    :pswitch_b3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4815
    .line 4816
    .line 4817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4818
    .line 4819
    .line 4820
    move-result-object v0

    .line 4821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4822
    .line 4823
    .line 4824
    move-result v1

    .line 4825
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    .line 4826
    .line 4827
    .line 4828
    move-result-object v0

    .line 4829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4830
    .line 4831
    .line 4832
    if-eqz v0, :cond_61

    .line 4833
    .line 4834
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4835
    .line 4836
    .line 4837
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4838
    .line 4839
    .line 4840
    goto :goto_39

    .line 4841
    :cond_61
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4842
    .line 4843
    .line 4844
    :goto_39
    return v10

    .line 4845
    :pswitch_b4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4846
    .line 4847
    .line 4848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4849
    .line 4850
    .line 4851
    move-result-object v0

    .line 4852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4853
    .line 4854
    .line 4855
    move-result-object v2

    .line 4856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4857
    .line 4858
    .line 4859
    move-result v1

    .line 4860
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 4861
    .line 4862
    .line 4863
    move-result-object v0

    .line 4864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4865
    .line 4866
    .line 4867
    if-eqz v0, :cond_62

    .line 4868
    .line 4869
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4870
    .line 4871
    .line 4872
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4873
    .line 4874
    .line 4875
    goto :goto_3a

    .line 4876
    :cond_62
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4877
    .line 4878
    .line 4879
    :goto_3a
    return v10

    .line 4880
    :pswitch_b5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4881
    .line 4882
    .line 4883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 4884
    .line 4885
    .line 4886
    move-result-object v0

    .line 4887
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    .line 4888
    .line 4889
    .line 4890
    move-result-object v0

    .line 4891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4892
    .line 4893
    .line 4894
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4895
    .line 4896
    .line 4897
    return v10

    .line 4898
    :pswitch_b6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4899
    .line 4900
    .line 4901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 4902
    .line 4903
    .line 4904
    move-result-object v0

    .line 4905
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    .line 4906
    .line 4907
    .line 4908
    move-result-object v0

    .line 4909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4910
    .line 4911
    .line 4912
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4913
    .line 4914
    .line 4915
    return v10

    .line 4916
    :pswitch_b7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4917
    .line 4918
    .line 4919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4920
    .line 4921
    .line 4922
    move-result-object v0

    .line 4923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4924
    .line 4925
    .line 4926
    move-result v2

    .line 4927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4928
    .line 4929
    .line 4930
    move-result v1

    .line 4931
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I

    .line 4932
    .line 4933
    .line 4934
    move-result-object v0

    .line 4935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4936
    .line 4937
    .line 4938
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4939
    .line 4940
    .line 4941
    return v10

    .line 4942
    :pswitch_b8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4943
    .line 4944
    .line 4945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4946
    .line 4947
    .line 4948
    move-result-object v0

    .line 4949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4950
    .line 4951
    .line 4952
    move-result v2

    .line 4953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4954
    .line 4955
    .line 4956
    move-result v1

    .line 4957
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    .line 4958
    .line 4959
    .line 4960
    move-result v0

    .line 4961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4962
    .line 4963
    .line 4964
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4965
    .line 4966
    .line 4967
    return v10

    .line 4968
    :pswitch_b9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4969
    .line 4970
    .line 4971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4972
    .line 4973
    .line 4974
    move-result v0

    .line 4975
    if-eqz v0, :cond_63

    .line 4976
    .line 4977
    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4978
    .line 4979
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4980
    .line 4981
    .line 4982
    move-result-object v0

    .line 4983
    move-object v2, v0

    .line 4984
    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 4985
    .line 4986
    :cond_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4987
    .line 4988
    .line 4989
    move-result v0

    .line 4990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 4991
    .line 4992
    .line 4993
    move-result v1

    .line 4994
    invoke-interface {p0, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;II)Landroid/content/pm/PackageInfo;

    .line 4995
    .line 4996
    .line 4997
    move-result-object v0

    .line 4998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4999
    .line 5000
    .line 5001
    if-eqz v0, :cond_64

    .line 5002
    .line 5003
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 5004
    .line 5005
    .line 5006
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5007
    .line 5008
    .line 5009
    goto :goto_3b

    .line 5010
    :cond_64
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 5011
    .line 5012
    .line 5013
    :goto_3b
    return v10

    .line 5014
    :pswitch_ba
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5015
    .line 5016
    .line 5017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5018
    .line 5019
    .line 5020
    move-result-object v0

    .line 5021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5022
    .line 5023
    .line 5024
    move-result v2

    .line 5025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5026
    .line 5027
    .line 5028
    move-result v1

    .line 5029
    invoke-interface {p0, v0, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 5030
    .line 5031
    .line 5032
    move-result-object v0

    .line 5033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5034
    .line 5035
    .line 5036
    if-eqz v0, :cond_65

    .line 5037
    .line 5038
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 5039
    .line 5040
    .line 5041
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5042
    .line 5043
    .line 5044
    goto :goto_3c

    .line 5045
    :cond_65
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 5046
    .line 5047
    .line 5048
    :goto_3c
    return v10

    .line 5049
    :pswitch_bb
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5050
    .line 5051
    .line 5052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5053
    .line 5054
    .line 5055
    move-result-object v0

    .line 5056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5057
    .line 5058
    .line 5059
    move-result v1

    .line 5060
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 5061
    .line 5062
    .line 5063
    move-result v0

    .line 5064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5065
    .line 5066
    .line 5067
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5068
    .line 5069
    .line 5070
    return v10

    .line 5071
    :pswitch_bc
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5072
    .line 5073
    .line 5074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5075
    .line 5076
    .line 5077
    move-result-object v0

    .line 5078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 5079
    .line 5080
    .line 5081
    move-result v1

    .line 5082
    invoke-interface {p0, v0, v1}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V

    .line 5083
    .line 5084
    .line 5085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5086
    .line 5087
    .line 5088
    return v10

    .line 5089
    :cond_66
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5090
    .line 5091
    .line 5092
    return v10

    .line 5093
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
