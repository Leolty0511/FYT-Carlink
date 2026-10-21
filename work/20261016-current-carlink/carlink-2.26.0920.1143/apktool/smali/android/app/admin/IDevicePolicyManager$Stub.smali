.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x6c

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0x9a

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x61

.field static final TRANSACTION_approveCaCert:I = 0x55

.field static final TRANSACTION_bindDeviceAdminServiceAsUser:I = 0xd9

.field static final TRANSACTION_checkProvisioningPreCondition:I = 0xaf

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x59

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x6d

.field static final TRANSACTION_clearDeviceOwner:I = 0x45

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x62

.field static final TRANSACTION_clearProfileOwner:I = 0x4c

.field static final TRANSACTION_clearResetPasswordToken:I = 0xdf

.field static final TRANSACTION_createAdminSupportIntent:I = 0x79

.field static final TRANSACTION_createAndManageUser:I = 0x7c

.field static final TRANSACTION_enableSystemApp:I = 0x7f

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0x80

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x54

.field static final TRANSACTION_forceRemoveActiveAdmin:I = 0x37

.field static final TRANSACTION_forceUpdateUserSetupComplete:I = 0xd3

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0x82

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0x83

.field static final TRANSACTION_getActiveAdmins:I = 0x33

.field static final TRANSACTION_getAffiliationIds:I = 0xc8

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x60

.field static final TRANSACTION_getApplicationRestrictions:I = 0x64

.field static final TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x66

.field static final TRANSACTION_getAutoTimeRequired:I = 0x9e

.field static final TRANSACTION_getBindDeviceAdminTargetUsers:I = 0xda

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0x96

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0x97

.field static final TRANSACTION_getCameraDisabled:I = 0x2c

.field static final TRANSACTION_getCertInstallerPackage:I = 0x5e

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0x8f

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0x90

.field static final TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0x92

.field static final TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0x93

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0x9c

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x18

.field static final TRANSACTION_getDelegatePackages:I = 0x5c

.field static final TRANSACTION_getDelegatedScopes:I = 0x5b

.field static final TRANSACTION_getDeviceOwnerComponent:I = 0x42

.field static final TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x4f

.field static final TRANSACTION_getDeviceOwnerName:I = 0x44

.field static final TRANSACTION_getDeviceOwnerOrganizationName:I = 0xc3

.field static final TRANSACTION_getDeviceOwnerUserId:I = 0x46

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xa7

.field static final TRANSACTION_getForceEphemeralUsers:I = 0xa0

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x25

.field static final TRANSACTION_getKeepUninstalledPackages:I = 0xb1

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x30

.field static final TRANSACTION_getLastBugReportRequestTime:I = 0xdc

.field static final TRANSACTION_getLastNetworkLogRetrievalTime:I = 0xdd

.field static final TRANSACTION_getLastSecurityLogRetrievalTime:I = 0xdb

.field static final TRANSACTION_getLockTaskPackages:I = 0x85

.field static final TRANSACTION_getLongSupportMessage:I = 0xb9

.field static final TRANSACTION_getLongSupportMessageForUser:I = 0xbb

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1e

.field static final TRANSACTION_getMaximumTimeToLockForUserAndProfiles:I = 0x1f

.field static final TRANSACTION_getOrganizationColor:I = 0xbf

.field static final TRANSACTION_getOrganizationColorForUser:I = 0xc0

.field static final TRANSACTION_getOrganizationName:I = 0xc2

.field static final TRANSACTION_getOrganizationNameForUser:I = 0xc4

.field static final TRANSACTION_getOwnerInstalledCaCerts:I = 0xe3

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPendingSystemUpdate:I = 0xa9

.field static final TRANSACTION_getPermissionGrantState:I = 0xad

.field static final TRANSACTION_getPermissionPolicy:I = 0xab

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x6f

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x70

.field static final TRANSACTION_getPermittedCrossProfileNotificationListeners:I = 0x77

.field static final TRANSACTION_getPermittedInputMethods:I = 0x73

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0x74

.field static final TRANSACTION_getProfileOwner:I = 0x48

.field static final TRANSACTION_getProfileOwnerName:I = 0x49

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_getRemoveWarning:I = 0x35

.field static final TRANSACTION_getRequiredStrongAuthTimeout:I = 0x21

.field static final TRANSACTION_getRestrictionsProvider:I = 0x69

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x2e

.field static final TRANSACTION_getShortSupportMessage:I = 0xb7

.field static final TRANSACTION_getShortSupportMessageForUser:I = 0xba

.field static final TRANSACTION_getStorageEncryption:I = 0x28

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x29

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0xa4

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0x99

.field static final TRANSACTION_getUserProvisioningState:I = 0xc5

.field static final TRANSACTION_getUserRestrictions:I = 0x6b

.field static final TRANSACTION_getWifiMacAddress:I = 0xb4

.field static final TRANSACTION_hasDeviceOwner:I = 0x43

.field static final TRANSACTION_hasGrantedPolicy:I = 0x38

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x4d

.field static final TRANSACTION_installCaCert:I = 0x52

.field static final TRANSACTION_installKeyPair:I = 0x57

.field static final TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x71

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x32

.field static final TRANSACTION_isAffiliatedUser:I = 0xc9

.field static final TRANSACTION_isApplicationHidden:I = 0x7b

.field static final TRANSACTION_isBackupServiceEnabled:I = 0xd5

.field static final TRANSACTION_isCaCertApproved:I = 0x56

.field static final TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x67

.field static final TRANSACTION_isCurrentInputMethodSetByOwner:I = 0xe2

.field static final TRANSACTION_isDeviceProvisioned:I = 0xd0

.field static final TRANSACTION_isDeviceProvisioningConfigApplied:I = 0xd1

.field static final TRANSACTION_isInputMethodPermittedByAdmin:I = 0x75

.field static final TRANSACTION_isLockTaskPermitted:I = 0x86

.field static final TRANSACTION_isManagedProfile:I = 0xb2

.field static final TRANSACTION_isMasterVolumeMuted:I = 0x8a

.field static final TRANSACTION_isNetworkLoggingEnabled:I = 0xd7

.field static final TRANSACTION_isNotificationListenerServicePermitted:I = 0x78

.field static final TRANSACTION_isPackageSuspended:I = 0x51

.field static final TRANSACTION_isProfileActivePasswordSufficientForParent:I = 0x17

.field static final TRANSACTION_isProvisioningAllowed:I = 0xae

.field static final TRANSACTION_isRemovingAdmin:I = 0xa1

.field static final TRANSACTION_isResetPasswordTokenActive:I = 0xe0

.field static final TRANSACTION_isSecurityLoggingEnabled:I = 0xcb

.field static final TRANSACTION_isSeparateProfileChallengeAllowed:I = 0xbc

.field static final TRANSACTION_isSystemOnlyUser:I = 0xb3

.field static final TRANSACTION_isUninstallBlocked:I = 0x8d

.field static final TRANSACTION_isUninstallInQueue:I = 0xce

.field static final TRANSACTION_lockNow:I = 0x22

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0x8b

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0xa8

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x34

.field static final TRANSACTION_reboot:I = 0xb5

.field static final TRANSACTION_removeActiveAdmin:I = 0x36

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0x9b

.field static final TRANSACTION_removeKeyPair:I = 0x58

.field static final TRANSACTION_removeUser:I = 0x7d

.field static final TRANSACTION_reportFailedFingerprintAttempt:I = 0x3d

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x3b

.field static final TRANSACTION_reportKeyguardDismissed:I = 0x3f

.field static final TRANSACTION_reportKeyguardSecured:I = 0x40

.field static final TRANSACTION_reportPasswordChanged:I = 0x3a

.field static final TRANSACTION_reportSuccessfulFingerprintAttempt:I = 0x3e

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x3c

.field static final TRANSACTION_requestBugreport:I = 0x2a

.field static final TRANSACTION_resetPassword:I = 0x1c

.field static final TRANSACTION_resetPasswordWithToken:I = 0xe1

.field static final TRANSACTION_retrieveNetworkLogs:I = 0xd8

.field static final TRANSACTION_retrievePreRebootSecurityLogs:I = 0xcd

.field static final TRANSACTION_retrieveSecurityLogs:I = 0xcc

.field static final TRANSACTION_setAccountManagementDisabled:I = 0x81

.field static final TRANSACTION_setActiveAdmin:I = 0x31

.field static final TRANSACTION_setActivePasswordState:I = 0x39

.field static final TRANSACTION_setAffiliationIds:I = 0xc7

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x5f

.field static final TRANSACTION_setApplicationHidden:I = 0x7a

.field static final TRANSACTION_setApplicationRestrictions:I = 0x63

.field static final TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x65

.field static final TRANSACTION_setAutoTimeRequired:I = 0x9d

.field static final TRANSACTION_setBackupServiceEnabled:I = 0xd4

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0x95

.field static final TRANSACTION_setCameraDisabled:I = 0x2b

.field static final TRANSACTION_setCertInstallerPackage:I = 0x5d

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0x8e

.field static final TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0x91

.field static final TRANSACTION_setDelegatedScopes:I = 0x5a

.field static final TRANSACTION_setDeviceOwner:I = 0x41

.field static final TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x4e

.field static final TRANSACTION_setDeviceProvisioningConfigApplied:I = 0xd2

.field static final TRANSACTION_setForceEphemeralUsers:I = 0x9f

.field static final TRANSACTION_setGlobalProxy:I = 0x24

.field static final TRANSACTION_setGlobalSetting:I = 0x87

.field static final TRANSACTION_setKeepUninstalledPackages:I = 0xb0

.field static final TRANSACTION_setKeyguardDisabled:I = 0xa5

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x2f

.field static final TRANSACTION_setLockTaskPackages:I = 0x84

.field static final TRANSACTION_setLongSupportMessage:I = 0xb8

.field static final TRANSACTION_setMasterVolumeMuted:I = 0x89

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_setNetworkLoggingEnabled:I = 0xd6

.field static final TRANSACTION_setOrganizationColor:I = 0xbd

.field static final TRANSACTION_setOrganizationColorForUser:I = 0xbe

.field static final TRANSACTION_setOrganizationName:I = 0xc1

.field static final TRANSACTION_setPackagesSuspended:I = 0x50

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPermissionGrantState:I = 0xac

.field static final TRANSACTION_setPermissionPolicy:I = 0xaa

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x6e

.field static final TRANSACTION_setPermittedCrossProfileNotificationListeners:I = 0x76

.field static final TRANSACTION_setPermittedInputMethods:I = 0x72

.field static final TRANSACTION_setProfileEnabled:I = 0x4a

.field static final TRANSACTION_setProfileName:I = 0x4b

.field static final TRANSACTION_setProfileOwner:I = 0x47

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x26

.field static final TRANSACTION_setRequiredStrongAuthTimeout:I = 0x20

.field static final TRANSACTION_setResetPasswordToken:I = 0xde

.field static final TRANSACTION_setRestrictionsProvider:I = 0x68

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x2d

.field static final TRANSACTION_setSecureSetting:I = 0x88

.field static final TRANSACTION_setSecurityLoggingEnabled:I = 0xca

.field static final TRANSACTION_setShortSupportMessage:I = 0xb6

.field static final TRANSACTION_setStatusBarDisabled:I = 0xa6

.field static final TRANSACTION_setStorageEncryption:I = 0x27

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0xa3

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0x98

.field static final TRANSACTION_setUninstallBlocked:I = 0x8c

.field static final TRANSACTION_setUserIcon:I = 0xa2

.field static final TRANSACTION_setUserProvisioningState:I = 0xc6

.field static final TRANSACTION_setUserRestriction:I = 0x6a

.field static final TRANSACTION_startManagedQuickContact:I = 0x94

.field static final TRANSACTION_switchUser:I = 0x7e

.field static final TRANSACTION_uninstallCaCerts:I = 0x53

.field static final TRANSACTION_uninstallPackageWithActiveAdmins:I = 0xcf

.field static final TRANSACTION_wipeData:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
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
    const-string v0, "android.app.admin.IDevicePolicyManager"

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
    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 13

    .line 1
    move-object v8, p0

    .line 2
    move v0, p1

    .line 3
    move-object v1, p2

    .line 4
    move-object/from16 v9, p3

    .line 5
    .line 6
    const v2, 0x5f4e5446

    .line 7
    .line 8
    .line 9
    const-string v3, "android.app.admin.IDevicePolicyManager"

    .line 10
    .line 11
    const/4 v10, 0x1

    .line 12
    if-eq v0, v2, :cond_10a

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    .line 35
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v2, v0

    .line 40
    check-cast v2, Landroid/os/UserHandle;

    .line 41
    .line 42
    :cond_0
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/StringParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v10

    .line 62
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    return v10

    .line 76
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 86
    .line 87
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v2, v0

    .line 92
    check-cast v2, Landroid/content/ComponentName;

    .line 93
    .line 94
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    .line 115
    .line 116
    return v10

    .line 117
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 127
    .line 128
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    move-object v2, v0

    .line 133
    check-cast v2, Landroid/content/ComponentName;

    .line 134
    .line 135
    :cond_3
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    .line 144
    .line 145
    return v10

    .line 146
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 156
    .line 157
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    move-object v2, v0

    .line 162
    check-cast v2, Landroid/content/ComponentName;

    .line 163
    .line 164
    :cond_4
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    .line 173
    .line 174
    return v10

    .line 175
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 185
    .line 186
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object v2, v0

    .line 191
    check-cast v2, Landroid/content/ComponentName;

    .line 192
    .line 193
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    .line 206
    .line 207
    return v10

    .line 208
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    .line 212
    .line 213
    .line 214
    move-result-wide v0

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    .line 220
    .line 221
    return v10

    .line 222
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getLastBugReportRequestTime()J

    .line 226
    .line 227
    .line 228
    move-result-wide v0

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    .line 234
    .line 235
    return v10

    .line 236
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    .line 240
    .line 241
    .line 242
    move-result-wide v0

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    .line 248
    .line 249
    return v10

    .line 250
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_6

    .line 258
    .line 259
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 260
    .line 261
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    move-object v2, v0

    .line 266
    check-cast v2, Landroid/content/ComponentName;

    .line 267
    .line 268
    :cond_6
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 276
    .line 277
    .line 278
    return v10

    .line 279
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_7

    .line 287
    .line 288
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/content/ComponentName;

    .line 295
    .line 296
    move-object v3, v0

    .line 297
    goto :goto_1

    .line 298
    :cond_7
    move-object v3, v2

    .line 299
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_8

    .line 316
    .line 317
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 318
    .line 319
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Landroid/content/Intent;

    .line 324
    .line 325
    move-object v6, v0

    .line 326
    goto :goto_2

    .line 327
    :cond_8
    move-object v6, v2

    .line 328
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    move-object v0, p0

    .line 345
    move-object v1, v3

    .line 346
    move-object v2, v4

    .line 347
    move-object v3, v5

    .line 348
    move-object v4, v6

    .line 349
    move-object v5, v7

    .line 350
    move v6, v11

    .line 351
    move v7, v12

    .line 352
    invoke-interface/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    .line 361
    .line 362
    return v10

    .line 363
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_9

    .line 371
    .line 372
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 373
    .line 374
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    move-object v2, v0

    .line 379
    check-cast v2, Landroid/content/ComponentName;

    .line 380
    .line 381
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 382
    .line 383
    .line 384
    move-result-wide v0

    .line 385
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 393
    .line 394
    .line 395
    return v10

    .line 396
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_a

    .line 404
    .line 405
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 406
    .line 407
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    move-object v2, v0

    .line 412
    check-cast v2, Landroid/content/ComponentName;

    .line 413
    .line 414
    :cond_a
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    .line 423
    .line 424
    return v10

    .line 425
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    if-eqz v0, :cond_b

    .line 433
    .line 434
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 435
    .line 436
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    move-object v2, v0

    .line 441
    check-cast v2, Landroid/content/ComponentName;

    .line 442
    .line 443
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_c

    .line 448
    .line 449
    move v6, v10

    .line 450
    :cond_c
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 451
    .line 452
    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    .line 455
    .line 456
    return v10

    .line 457
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_d

    .line 465
    .line 466
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 467
    .line 468
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    move-object v2, v0

    .line 473
    check-cast v2, Landroid/content/ComponentName;

    .line 474
    .line 475
    :cond_d
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    .line 484
    .line 485
    return v10

    .line 486
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eqz v0, :cond_e

    .line 494
    .line 495
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 496
    .line 497
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    move-object v2, v0

    .line 502
    check-cast v2, Landroid/content/ComponentName;

    .line 503
    .line 504
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-eqz v0, :cond_f

    .line 509
    .line 510
    move v6, v10

    .line 511
    :cond_f
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 512
    .line 513
    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    .line 516
    .line 517
    return v10

    .line 518
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->forceUpdateUserSetupComplete()V

    .line 522
    .line 523
    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    .line 526
    .line 527
    return v10

    .line 528
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->setDeviceProvisioningConfigApplied()V

    .line 532
    .line 533
    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    .line 536
    .line 537
    return v10

    .line 538
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioningConfigApplied()Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    .line 550
    .line 551
    return v10

    .line 552
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioned()Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    .line 564
    .line 565
    return v10

    .line 566
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    .line 578
    .line 579
    return v10

    .line 580
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

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
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 602
    .line 603
    .line 604
    move-result v0

    .line 605
    if-eqz v0, :cond_10

    .line 606
    .line 607
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 608
    .line 609
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    move-object v2, v0

    .line 614
    check-cast v2, Landroid/content/ComponentName;

    .line 615
    .line 616
    :cond_10
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    .line 622
    .line 623
    if-eqz v0, :cond_11

    .line 624
    .line 625
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 629
    .line 630
    .line 631
    goto :goto_3

    .line 632
    :cond_11
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    .line 634
    .line 635
    :goto_3
    return v10

    .line 636
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-eqz v0, :cond_12

    .line 644
    .line 645
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 646
    .line 647
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    move-object v2, v0

    .line 652
    check-cast v2, Landroid/content/ComponentName;

    .line 653
    .line 654
    :cond_12
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    .line 660
    .line 661
    if-eqz v0, :cond_13

    .line 662
    .line 663
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v0, v9, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 667
    .line 668
    .line 669
    goto :goto_4

    .line 670
    :cond_13
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    .line 672
    .line 673
    :goto_4
    return v10

    .line 674
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-eqz v0, :cond_14

    .line 682
    .line 683
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 684
    .line 685
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    move-object v2, v0

    .line 690
    check-cast v2, Landroid/content/ComponentName;

    .line 691
    .line 692
    :cond_14
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

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
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-eqz v0, :cond_15

    .line 711
    .line 712
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 713
    .line 714
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    move-object v2, v0

    .line 719
    check-cast v2, Landroid/content/ComponentName;

    .line 720
    .line 721
    :cond_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 722
    .line 723
    .line 724
    move-result v0

    .line 725
    if-eqz v0, :cond_16

    .line 726
    .line 727
    move v6, v10

    .line 728
    :cond_16
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 729
    .line 730
    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    .line 733
    .line 734
    return v10

    .line 735
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser()Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    .line 747
    .line 748
    return v10

    .line 749
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    if-eqz v0, :cond_17

    .line 757
    .line 758
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 759
    .line 760
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    move-object v2, v0

    .line 765
    check-cast v2, Landroid/content/ComponentName;

    .line 766
    .line 767
    :cond_17
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 775
    .line 776
    .line 777
    return v10

    .line 778
    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    if-eqz v0, :cond_18

    .line 786
    .line 787
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 788
    .line 789
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    move-object v2, v0

    .line 794
    check-cast v2, Landroid/content/ComponentName;

    .line 795
    .line 796
    :cond_18
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    .line 805
    .line 806
    return v10

    .line 807
    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 815
    .line 816
    .line 817
    move-result v1

    .line 818
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setUserProvisioningState(II)V

    .line 819
    .line 820
    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    .line 823
    .line 824
    return v10

    .line 825
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getUserProvisioningState()I

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    .line 837
    .line 838
    return v10

    .line 839
    :pswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    .line 852
    .line 853
    if-eqz v0, :cond_19

    .line 854
    .line 855
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    .line 857
    .line 858
    invoke-static {v0, v9, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 859
    .line 860
    .line 861
    goto :goto_5

    .line 862
    :cond_19
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    .line 864
    .line 865
    :goto_5
    return v10

    .line 866
    :pswitch_20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    .line 875
    .line 876
    if-eqz v0, :cond_1a

    .line 877
    .line 878
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    .line 880
    .line 881
    invoke-static {v0, v9, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 882
    .line 883
    .line 884
    goto :goto_6

    .line 885
    :cond_1a
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    .line 887
    .line 888
    :goto_6
    return v10

    .line 889
    :pswitch_21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 893
    .line 894
    .line 895
    move-result v0

    .line 896
    if-eqz v0, :cond_1b

    .line 897
    .line 898
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 899
    .line 900
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    move-object v2, v0

    .line 905
    check-cast v2, Landroid/content/ComponentName;

    .line 906
    .line 907
    :cond_1b
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    .line 913
    .line 914
    if-eqz v0, :cond_1c

    .line 915
    .line 916
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    .line 918
    .line 919
    invoke-static {v0, v9, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 920
    .line 921
    .line 922
    goto :goto_7

    .line 923
    :cond_1c
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    .line 925
    .line 926
    :goto_7
    return v10

    .line 927
    :pswitch_22
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 931
    .line 932
    .line 933
    move-result v0

    .line 934
    if-eqz v0, :cond_1d

    .line 935
    .line 936
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 937
    .line 938
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    check-cast v0, Landroid/content/ComponentName;

    .line 943
    .line 944
    goto :goto_8

    .line 945
    :cond_1d
    move-object v0, v2

    .line 946
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 947
    .line 948
    .line 949
    move-result v3

    .line 950
    if-eqz v3, :cond_1e

    .line 951
    .line 952
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 953
    .line 954
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    move-object v2, v1

    .line 959
    check-cast v2, Ljava/lang/CharSequence;

    .line 960
    .line 961
    :cond_1e
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 962
    .line 963
    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    .line 966
    .line 967
    return v10

    .line 968
    :pswitch_23
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 972
    .line 973
    .line 974
    move-result v0

    .line 975
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColorForUser(I)I

    .line 976
    .line 977
    .line 978
    move-result v0

    .line 979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    .line 981
    .line 982
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    .line 984
    .line 985
    return v10

    .line 986
    :pswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    if-eqz v0, :cond_1f

    .line 994
    .line 995
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 996
    .line 997
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    move-object v2, v0

    .line 1002
    check-cast v2, Landroid/content/ComponentName;

    .line 1003
    .line 1004
    :cond_1f
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColor(Landroid/content/ComponentName;)I

    .line 1005
    .line 1006
    .line 1007
    move-result v0

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    .line 1013
    .line 1014
    return v10

    .line 1015
    :pswitch_25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1023
    .line 1024
    .line 1025
    move-result v1

    .line 1026
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColorForUser(II)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    .line 1031
    .line 1032
    return v10

    .line 1033
    :pswitch_26
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1037
    .line 1038
    .line 1039
    move-result v0

    .line 1040
    if-eqz v0, :cond_20

    .line 1041
    .line 1042
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1043
    .line 1044
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    move-object v2, v0

    .line 1049
    check-cast v2, Landroid/content/ComponentName;

    .line 1050
    .line 1051
    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    .line 1060
    .line 1061
    return v10

    .line 1062
    :pswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1066
    .line 1067
    .line 1068
    move-result v0

    .line 1069
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->isSeparateProfileChallengeAllowed(I)Z

    .line 1070
    .line 1071
    .line 1072
    move-result v0

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    .line 1078
    .line 1079
    return v10

    .line 1080
    :pswitch_28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1084
    .line 1085
    .line 1086
    move-result v0

    .line 1087
    if-eqz v0, :cond_21

    .line 1088
    .line 1089
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1090
    .line 1091
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    move-object v2, v0

    .line 1096
    check-cast v2, Landroid/content/ComponentName;

    .line 1097
    .line 1098
    :cond_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1099
    .line 1100
    .line 1101
    move-result v0

    .line 1102
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    .line 1108
    .line 1109
    if-eqz v0, :cond_22

    .line 1110
    .line 1111
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    .line 1113
    .line 1114
    invoke-static {v0, v9, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1115
    .line 1116
    .line 1117
    goto :goto_9

    .line 1118
    :cond_22
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    .line 1120
    .line 1121
    :goto_9
    return v10

    .line 1122
    :pswitch_29
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1126
    .line 1127
    .line 1128
    move-result v0

    .line 1129
    if-eqz v0, :cond_23

    .line 1130
    .line 1131
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1132
    .line 1133
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v0

    .line 1137
    move-object v2, v0

    .line 1138
    check-cast v2, Landroid/content/ComponentName;

    .line 1139
    .line 1140
    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    .line 1150
    .line 1151
    if-eqz v0, :cond_24

    .line 1152
    .line 1153
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    .line 1155
    .line 1156
    invoke-static {v0, v9, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1157
    .line 1158
    .line 1159
    goto :goto_a

    .line 1160
    :cond_24
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1161
    .line 1162
    .line 1163
    :goto_a
    return v10

    .line 1164
    :pswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1168
    .line 1169
    .line 1170
    move-result v0

    .line 1171
    if-eqz v0, :cond_25

    .line 1172
    .line 1173
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1174
    .line 1175
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    move-object v2, v0

    .line 1180
    check-cast v2, Landroid/content/ComponentName;

    .line 1181
    .line 1182
    :cond_25
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    .line 1188
    .line 1189
    if-eqz v0, :cond_26

    .line 1190
    .line 1191
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    .line 1193
    .line 1194
    invoke-static {v0, v9, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1195
    .line 1196
    .line 1197
    goto :goto_b

    .line 1198
    :cond_26
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    .line 1200
    .line 1201
    :goto_b
    return v10

    .line 1202
    :pswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    if-eqz v0, :cond_27

    .line 1210
    .line 1211
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1212
    .line 1213
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    check-cast v0, Landroid/content/ComponentName;

    .line 1218
    .line 1219
    goto :goto_c

    .line 1220
    :cond_27
    move-object v0, v2

    .line 1221
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1222
    .line 1223
    .line 1224
    move-result v3

    .line 1225
    if-eqz v3, :cond_28

    .line 1226
    .line 1227
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1228
    .line 1229
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v1

    .line 1233
    move-object v2, v1

    .line 1234
    check-cast v2, Ljava/lang/CharSequence;

    .line 1235
    .line 1236
    :cond_28
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    .line 1241
    .line 1242
    return v10

    .line 1243
    :pswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1247
    .line 1248
    .line 1249
    move-result v0

    .line 1250
    if-eqz v0, :cond_29

    .line 1251
    .line 1252
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1253
    .line 1254
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    move-object v2, v0

    .line 1259
    check-cast v2, Landroid/content/ComponentName;

    .line 1260
    .line 1261
    :cond_29
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    .line 1267
    .line 1268
    if-eqz v0, :cond_2a

    .line 1269
    .line 1270
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    .line 1272
    .line 1273
    invoke-static {v0, v9, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1274
    .line 1275
    .line 1276
    goto :goto_d

    .line 1277
    :cond_2a
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    .line 1279
    .line 1280
    :goto_d
    return v10

    .line 1281
    :pswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1285
    .line 1286
    .line 1287
    move-result v0

    .line 1288
    if-eqz v0, :cond_2b

    .line 1289
    .line 1290
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1291
    .line 1292
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    check-cast v0, Landroid/content/ComponentName;

    .line 1297
    .line 1298
    goto :goto_e

    .line 1299
    :cond_2b
    move-object v0, v2

    .line 1300
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1301
    .line 1302
    .line 1303
    move-result v3

    .line 1304
    if-eqz v3, :cond_2c

    .line 1305
    .line 1306
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1307
    .line 1308
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v1

    .line 1312
    move-object v2, v1

    .line 1313
    check-cast v2, Ljava/lang/CharSequence;

    .line 1314
    .line 1315
    :cond_2c
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    .line 1320
    .line 1321
    return v10

    .line 1322
    :pswitch_2e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1326
    .line 1327
    .line 1328
    move-result v0

    .line 1329
    if-eqz v0, :cond_2d

    .line 1330
    .line 1331
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1332
    .line 1333
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    move-object v2, v0

    .line 1338
    check-cast v2, Landroid/content/ComponentName;

    .line 1339
    .line 1340
    :cond_2d
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->reboot(Landroid/content/ComponentName;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    .line 1345
    .line 1346
    return v10

    .line 1347
    :pswitch_2f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1351
    .line 1352
    .line 1353
    move-result v0

    .line 1354
    if-eqz v0, :cond_2e

    .line 1355
    .line 1356
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1357
    .line 1358
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    move-object v2, v0

    .line 1363
    check-cast v2, Landroid/content/ComponentName;

    .line 1364
    .line 1365
    :cond_2e
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    return v10

    .line 1376
    :pswitch_30
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1380
    .line 1381
    .line 1382
    move-result v0

    .line 1383
    if-eqz v0, :cond_2f

    .line 1384
    .line 1385
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1386
    .line 1387
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v0

    .line 1391
    move-object v2, v0

    .line 1392
    check-cast v2, Landroid/content/ComponentName;

    .line 1393
    .line 1394
    :cond_2f
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->isSystemOnlyUser(Landroid/content/ComponentName;)Z

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    .line 1400
    .line 1401
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    .line 1403
    .line 1404
    return v10

    .line 1405
    :pswitch_31
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1409
    .line 1410
    .line 1411
    move-result v0

    .line 1412
    if-eqz v0, :cond_30

    .line 1413
    .line 1414
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1415
    .line 1416
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v0

    .line 1420
    move-object v2, v0

    .line 1421
    check-cast v2, Landroid/content/ComponentName;

    .line 1422
    .line 1423
    :cond_30
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    .line 1424
    .line 1425
    .line 1426
    move-result v0

    .line 1427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    .line 1432
    .line 1433
    return v10

    .line 1434
    :pswitch_32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1438
    .line 1439
    .line 1440
    move-result v0

    .line 1441
    if-eqz v0, :cond_31

    .line 1442
    .line 1443
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1444
    .line 1445
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v0

    .line 1449
    move-object v2, v0

    .line 1450
    check-cast v2, Landroid/content/ComponentName;

    .line 1451
    .line 1452
    :cond_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1464
    .line 1465
    .line 1466
    return v10

    .line 1467
    :pswitch_33
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1471
    .line 1472
    .line 1473
    move-result v0

    .line 1474
    if-eqz v0, :cond_32

    .line 1475
    .line 1476
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1477
    .line 1478
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v0

    .line 1482
    move-object v2, v0

    .line 1483
    check-cast v2, Landroid/content/ComponentName;

    .line 1484
    .line 1485
    :cond_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v1

    .line 1493
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    .line 1498
    .line 1499
    return v10

    .line 1500
    :pswitch_34
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v0

    .line 1507
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v1

    .line 1511
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->checkProvisioningPreCondition(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    .line 1513
    .line 1514
    move-result v0

    .line 1515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    .line 1520
    .line 1521
    return v10

    .line 1522
    :pswitch_35
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v0

    .line 1529
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v1

    .line 1533
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1534
    .line 1535
    .line 1536
    move-result v0

    .line 1537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    .line 1539
    .line 1540
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1541
    .line 1542
    .line 1543
    return v10

    .line 1544
    :pswitch_36
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1548
    .line 1549
    .line 1550
    move-result v0

    .line 1551
    if-eqz v0, :cond_33

    .line 1552
    .line 1553
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1554
    .line 1555
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v0

    .line 1559
    move-object v2, v0

    .line 1560
    check-cast v2, Landroid/content/ComponentName;

    .line 1561
    .line 1562
    :cond_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v3

    .line 1570
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v1

    .line 1574
    invoke-interface {p0, v2, v0, v3, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    .line 1576
    .line 1577
    move-result v0

    .line 1578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    .line 1580
    .line 1581
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    .line 1583
    .line 1584
    return v10

    .line 1585
    :pswitch_37
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1589
    .line 1590
    .line 1591
    move-result v0

    .line 1592
    if-eqz v0, :cond_34

    .line 1593
    .line 1594
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1595
    .line 1596
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v0

    .line 1600
    check-cast v0, Landroid/content/ComponentName;

    .line 1601
    .line 1602
    move-object v2, v0

    .line 1603
    :cond_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v3

    .line 1607
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v4

    .line 1611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v5

    .line 1615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1616
    .line 1617
    .line 1618
    move-result v6

    .line 1619
    move-object v0, p0

    .line 1620
    move-object v1, v2

    .line 1621
    move-object v2, v3

    .line 1622
    move-object v3, v4

    .line 1623
    move-object v4, v5

    .line 1624
    move v5, v6

    .line 1625
    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    .line 1631
    .line 1632
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1633
    .line 1634
    .line 1635
    return v10

    .line 1636
    :pswitch_38
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1640
    .line 1641
    .line 1642
    move-result v0

    .line 1643
    if-eqz v0, :cond_35

    .line 1644
    .line 1645
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1646
    .line 1647
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v0

    .line 1651
    move-object v2, v0

    .line 1652
    check-cast v2, Landroid/content/ComponentName;

    .line 1653
    .line 1654
    :cond_35
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I

    .line 1655
    .line 1656
    .line 1657
    move-result v0

    .line 1658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    .line 1663
    .line 1664
    return v10

    .line 1665
    :pswitch_39
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1669
    .line 1670
    .line 1671
    move-result v0

    .line 1672
    if-eqz v0, :cond_36

    .line 1673
    .line 1674
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1675
    .line 1676
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v0

    .line 1680
    move-object v2, v0

    .line 1681
    check-cast v2, Landroid/content/ComponentName;

    .line 1682
    .line 1683
    :cond_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v0

    .line 1687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1688
    .line 1689
    .line 1690
    move-result v1

    .line 1691
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1695
    .line 1696
    .line 1697
    return v10

    .line 1698
    :pswitch_3a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1702
    .line 1703
    .line 1704
    move-result v0

    .line 1705
    if-eqz v0, :cond_37

    .line 1706
    .line 1707
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1708
    .line 1709
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v0

    .line 1713
    move-object v2, v0

    .line 1714
    check-cast v2, Landroid/content/ComponentName;

    .line 1715
    .line 1716
    :cond_37
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v0

    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    .line 1722
    .line 1723
    if-eqz v0, :cond_38

    .line 1724
    .line 1725
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v0, v9, v10}, Landroid/app/admin/SystemUpdateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1729
    .line 1730
    .line 1731
    goto :goto_f

    .line 1732
    :cond_38
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1733
    .line 1734
    .line 1735
    :goto_f
    return v10

    .line 1736
    :pswitch_3b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1737
    .line 1738
    .line 1739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1740
    .line 1741
    .line 1742
    move-result v0

    .line 1743
    if-eqz v0, :cond_39

    .line 1744
    .line 1745
    sget-object v0, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1746
    .line 1747
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v0

    .line 1751
    move-object v2, v0

    .line 1752
    check-cast v2, Landroid/app/admin/SystemUpdateInfo;

    .line 1753
    .line 1754
    :cond_39
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    .line 1759
    .line 1760
    return v10

    .line 1761
    :pswitch_3c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    .line 1763
    .line 1764
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    .line 1765
    .line 1766
    .line 1767
    move-result v0

    .line 1768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1772
    .line 1773
    .line 1774
    return v10

    .line 1775
    :pswitch_3d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1779
    .line 1780
    .line 1781
    move-result v0

    .line 1782
    if-eqz v0, :cond_3a

    .line 1783
    .line 1784
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1785
    .line 1786
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v0

    .line 1790
    move-object v2, v0

    .line 1791
    check-cast v2, Landroid/content/ComponentName;

    .line 1792
    .line 1793
    :cond_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1794
    .line 1795
    .line 1796
    move-result v0

    .line 1797
    if-eqz v0, :cond_3b

    .line 1798
    .line 1799
    move v6, v10

    .line 1800
    :cond_3b
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    .line 1801
    .line 1802
    .line 1803
    move-result v0

    .line 1804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    .line 1806
    .line 1807
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    .line 1809
    .line 1810
    return v10

    .line 1811
    :pswitch_3e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1812
    .line 1813
    .line 1814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1815
    .line 1816
    .line 1817
    move-result v0

    .line 1818
    if-eqz v0, :cond_3c

    .line 1819
    .line 1820
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1821
    .line 1822
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v0

    .line 1826
    move-object v2, v0

    .line 1827
    check-cast v2, Landroid/content/ComponentName;

    .line 1828
    .line 1829
    :cond_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1830
    .line 1831
    .line 1832
    move-result v0

    .line 1833
    if-eqz v0, :cond_3d

    .line 1834
    .line 1835
    move v6, v10

    .line 1836
    :cond_3d
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    .line 1837
    .line 1838
    .line 1839
    move-result v0

    .line 1840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    .line 1845
    .line 1846
    return v10

    .line 1847
    :pswitch_3f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v0

    .line 1854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    .line 1856
    .line 1857
    if-eqz v0, :cond_3e

    .line 1858
    .line 1859
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v0, v9, v10}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1863
    .line 1864
    .line 1865
    goto :goto_10

    .line 1866
    :cond_3e
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    .line 1868
    .line 1869
    :goto_10
    return v10

    .line 1870
    :pswitch_40
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    .line 1872
    .line 1873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1874
    .line 1875
    .line 1876
    move-result v0

    .line 1877
    if-eqz v0, :cond_3f

    .line 1878
    .line 1879
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1880
    .line 1881
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1882
    .line 1883
    .line 1884
    move-result-object v0

    .line 1885
    check-cast v0, Landroid/content/ComponentName;

    .line 1886
    .line 1887
    goto :goto_11

    .line 1888
    :cond_3f
    move-object v0, v2

    .line 1889
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1890
    .line 1891
    .line 1892
    move-result v3

    .line 1893
    if-eqz v3, :cond_40

    .line 1894
    .line 1895
    sget-object v2, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1896
    .line 1897
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v1

    .line 1901
    move-object v2, v1

    .line 1902
    check-cast v2, Landroid/app/admin/SystemUpdatePolicy;

    .line 1903
    .line 1904
    :cond_40
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 1905
    .line 1906
    .line 1907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    .line 1909
    .line 1910
    return v10

    .line 1911
    :pswitch_41
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    .line 1913
    .line 1914
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1915
    .line 1916
    .line 1917
    move-result v0

    .line 1918
    if-eqz v0, :cond_41

    .line 1919
    .line 1920
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1921
    .line 1922
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v0

    .line 1926
    check-cast v0, Landroid/content/ComponentName;

    .line 1927
    .line 1928
    goto :goto_12

    .line 1929
    :cond_41
    move-object v0, v2

    .line 1930
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1931
    .line 1932
    .line 1933
    move-result v3

    .line 1934
    if-eqz v3, :cond_42

    .line 1935
    .line 1936
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1937
    .line 1938
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v1

    .line 1942
    move-object v2, v1

    .line 1943
    check-cast v2, Landroid/graphics/Bitmap;

    .line 1944
    .line 1945
    :cond_42
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 1946
    .line 1947
    .line 1948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    .line 1950
    .line 1951
    return v10

    .line 1952
    :pswitch_42
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1956
    .line 1957
    .line 1958
    move-result v0

    .line 1959
    if-eqz v0, :cond_43

    .line 1960
    .line 1961
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1962
    .line 1963
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v0

    .line 1967
    move-object v2, v0

    .line 1968
    check-cast v2, Landroid/content/ComponentName;

    .line 1969
    .line 1970
    :cond_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1971
    .line 1972
    .line 1973
    move-result v0

    .line 1974
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    .line 1975
    .line 1976
    .line 1977
    move-result v0

    .line 1978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    .line 1980
    .line 1981
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    .line 1983
    .line 1984
    return v10

    .line 1985
    :pswitch_43
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    .line 1987
    .line 1988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1989
    .line 1990
    .line 1991
    move-result v0

    .line 1992
    if-eqz v0, :cond_44

    .line 1993
    .line 1994
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1995
    .line 1996
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v0

    .line 2000
    move-object v2, v0

    .line 2001
    check-cast v2, Landroid/content/ComponentName;

    .line 2002
    .line 2003
    :cond_44
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    .line 2004
    .line 2005
    .line 2006
    move-result v0

    .line 2007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    .line 2009
    .line 2010
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2011
    .line 2012
    .line 2013
    return v10

    .line 2014
    :pswitch_44
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2015
    .line 2016
    .line 2017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2018
    .line 2019
    .line 2020
    move-result v0

    .line 2021
    if-eqz v0, :cond_45

    .line 2022
    .line 2023
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2024
    .line 2025
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v0

    .line 2029
    move-object v2, v0

    .line 2030
    check-cast v2, Landroid/content/ComponentName;

    .line 2031
    .line 2032
    :cond_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2033
    .line 2034
    .line 2035
    move-result v0

    .line 2036
    if-eqz v0, :cond_46

    .line 2037
    .line 2038
    move v6, v10

    .line 2039
    :cond_46
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 2040
    .line 2041
    .line 2042
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    .line 2044
    .line 2045
    return v10

    .line 2046
    :pswitch_45
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    .line 2048
    .line 2049
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeRequired()Z

    .line 2050
    .line 2051
    .line 2052
    move-result v0

    .line 2053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2054
    .line 2055
    .line 2056
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    .line 2058
    .line 2059
    return v10

    .line 2060
    :pswitch_46
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2061
    .line 2062
    .line 2063
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2064
    .line 2065
    .line 2066
    move-result v0

    .line 2067
    if-eqz v0, :cond_47

    .line 2068
    .line 2069
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2070
    .line 2071
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v0

    .line 2075
    move-object v2, v0

    .line 2076
    check-cast v2, Landroid/content/ComponentName;

    .line 2077
    .line 2078
    :cond_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2079
    .line 2080
    .line 2081
    move-result v0

    .line 2082
    if-eqz v0, :cond_48

    .line 2083
    .line 2084
    move v6, v10

    .line 2085
    :cond_48
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 2086
    .line 2087
    .line 2088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    .line 2090
    .line 2091
    return v10

    .line 2092
    :pswitch_47
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2093
    .line 2094
    .line 2095
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2096
    .line 2097
    .line 2098
    move-result v0

    .line 2099
    if-eqz v0, :cond_49

    .line 2100
    .line 2101
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2102
    .line 2103
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v0

    .line 2107
    move-object v2, v0

    .line 2108
    check-cast v2, Landroid/content/ComponentName;

    .line 2109
    .line 2110
    :cond_49
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    .line 2111
    .line 2112
    .line 2113
    move-result-object v0

    .line 2114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    .line 2116
    .line 2117
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2118
    .line 2119
    .line 2120
    return v10

    .line 2121
    :pswitch_48
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    .line 2123
    .line 2124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2125
    .line 2126
    .line 2127
    move-result v0

    .line 2128
    if-eqz v0, :cond_4a

    .line 2129
    .line 2130
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2131
    .line 2132
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2133
    .line 2134
    .line 2135
    move-result-object v0

    .line 2136
    move-object v2, v0

    .line 2137
    check-cast v2, Landroid/content/ComponentName;

    .line 2138
    .line 2139
    :cond_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v0

    .line 2143
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 2144
    .line 2145
    .line 2146
    move-result v0

    .line 2147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2148
    .line 2149
    .line 2150
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    .line 2152
    .line 2153
    return v10

    .line 2154
    :pswitch_49
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2155
    .line 2156
    .line 2157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2158
    .line 2159
    .line 2160
    move-result v0

    .line 2161
    if-eqz v0, :cond_4b

    .line 2162
    .line 2163
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2164
    .line 2165
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v0

    .line 2169
    move-object v2, v0

    .line 2170
    check-cast v2, Landroid/content/ComponentName;

    .line 2171
    .line 2172
    :cond_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v0

    .line 2176
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 2177
    .line 2178
    .line 2179
    move-result v0

    .line 2180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    .line 2185
    .line 2186
    return v10

    .line 2187
    :pswitch_4a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2188
    .line 2189
    .line 2190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2191
    .line 2192
    .line 2193
    move-result v0

    .line 2194
    if-eqz v0, :cond_4c

    .line 2195
    .line 2196
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2197
    .line 2198
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v0

    .line 2202
    check-cast v0, Landroid/content/ComponentName;

    .line 2203
    .line 2204
    goto :goto_13

    .line 2205
    :cond_4c
    move-object v0, v2

    .line 2206
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2207
    .line 2208
    .line 2209
    move-result v3

    .line 2210
    if-eqz v3, :cond_4d

    .line 2211
    .line 2212
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2213
    .line 2214
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v2

    .line 2218
    check-cast v2, Landroid/content/ComponentName;

    .line 2219
    .line 2220
    :cond_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2221
    .line 2222
    .line 2223
    move-result v3

    .line 2224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2225
    .line 2226
    .line 2227
    move-result v1

    .line 2228
    if-eqz v1, :cond_4e

    .line 2229
    .line 2230
    move v6, v10

    .line 2231
    :cond_4e
    invoke-interface {p0, v0, v2, v3, v6}, Landroid/app/admin/IDevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v0

    .line 2235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2236
    .line 2237
    .line 2238
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2239
    .line 2240
    .line 2241
    return v10

    .line 2242
    :pswitch_4b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2243
    .line 2244
    .line 2245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2246
    .line 2247
    .line 2248
    move-result v0

    .line 2249
    if-eqz v0, :cond_4f

    .line 2250
    .line 2251
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2252
    .line 2253
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v0

    .line 2257
    check-cast v0, Landroid/content/ComponentName;

    .line 2258
    .line 2259
    goto :goto_14

    .line 2260
    :cond_4f
    move-object v0, v2

    .line 2261
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2262
    .line 2263
    .line 2264
    move-result v3

    .line 2265
    if-eqz v3, :cond_50

    .line 2266
    .line 2267
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2268
    .line 2269
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2270
    .line 2271
    .line 2272
    move-result-object v3

    .line 2273
    check-cast v3, Landroid/content/ComponentName;

    .line 2274
    .line 2275
    goto :goto_15

    .line 2276
    :cond_50
    move-object v3, v2

    .line 2277
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2278
    .line 2279
    .line 2280
    move-result v4

    .line 2281
    if-eqz v4, :cond_51

    .line 2282
    .line 2283
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2284
    .line 2285
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2286
    .line 2287
    .line 2288
    move-result-object v2

    .line 2289
    check-cast v2, Landroid/os/PersistableBundle;

    .line 2290
    .line 2291
    :cond_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2292
    .line 2293
    .line 2294
    move-result v1

    .line 2295
    if-eqz v1, :cond_52

    .line 2296
    .line 2297
    move v6, v10

    .line 2298
    :cond_52
    invoke-interface {p0, v0, v3, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 2299
    .line 2300
    .line 2301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2302
    .line 2303
    .line 2304
    return v10

    .line 2305
    :pswitch_4c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2306
    .line 2307
    .line 2308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2309
    .line 2310
    .line 2311
    move-result v0

    .line 2312
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabledForUser(I)Z

    .line 2313
    .line 2314
    .line 2315
    move-result v0

    .line 2316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    .line 2318
    .line 2319
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2320
    .line 2321
    .line 2322
    return v10

    .line 2323
    :pswitch_4d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    .line 2325
    .line 2326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2327
    .line 2328
    .line 2329
    move-result v0

    .line 2330
    if-eqz v0, :cond_53

    .line 2331
    .line 2332
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2333
    .line 2334
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v0

    .line 2338
    move-object v2, v0

    .line 2339
    check-cast v2, Landroid/content/ComponentName;

    .line 2340
    .line 2341
    :cond_53
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    .line 2342
    .line 2343
    .line 2344
    move-result v0

    .line 2345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2346
    .line 2347
    .line 2348
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2349
    .line 2350
    .line 2351
    return v10

    .line 2352
    :pswitch_4e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2353
    .line 2354
    .line 2355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2356
    .line 2357
    .line 2358
    move-result v0

    .line 2359
    if-eqz v0, :cond_54

    .line 2360
    .line 2361
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2362
    .line 2363
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v0

    .line 2367
    move-object v2, v0

    .line 2368
    check-cast v2, Landroid/content/ComponentName;

    .line 2369
    .line 2370
    :cond_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2371
    .line 2372
    .line 2373
    move-result v0

    .line 2374
    if-eqz v0, :cond_55

    .line 2375
    .line 2376
    move v6, v10

    .line 2377
    :cond_55
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 2378
    .line 2379
    .line 2380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2381
    .line 2382
    .line 2383
    return v10

    .line 2384
    :pswitch_4f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2385
    .line 2386
    .line 2387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v3

    .line 2391
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 2392
    .line 2393
    .line 2394
    move-result-wide v4

    .line 2395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2396
    .line 2397
    .line 2398
    move-result v0

    .line 2399
    if-eqz v0, :cond_56

    .line 2400
    .line 2401
    move v6, v10

    .line 2402
    :cond_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 2403
    .line 2404
    .line 2405
    move-result-wide v11

    .line 2406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2407
    .line 2408
    .line 2409
    move-result v0

    .line 2410
    if-eqz v0, :cond_57

    .line 2411
    .line 2412
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2413
    .line 2414
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2415
    .line 2416
    .line 2417
    move-result-object v0

    .line 2418
    check-cast v0, Landroid/content/Intent;

    .line 2419
    .line 2420
    move-object v7, v0

    .line 2421
    goto :goto_16

    .line 2422
    :cond_57
    move-object v7, v2

    .line 2423
    :goto_16
    move-object v0, p0

    .line 2424
    move-object v1, v3

    .line 2425
    move-wide v2, v4

    .line 2426
    move v4, v6

    .line 2427
    move-wide v5, v11

    .line 2428
    invoke-interface/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 2429
    .line 2430
    .line 2431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2432
    .line 2433
    .line 2434
    return v10

    .line 2435
    :pswitch_50
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2436
    .line 2437
    .line 2438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2439
    .line 2440
    .line 2441
    move-result v0

    .line 2442
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabledForUser(I)Z

    .line 2443
    .line 2444
    .line 2445
    move-result v0

    .line 2446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2447
    .line 2448
    .line 2449
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2450
    .line 2451
    .line 2452
    return v10

    .line 2453
    :pswitch_51
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    .line 2455
    .line 2456
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2457
    .line 2458
    .line 2459
    move-result v0

    .line 2460
    if-eqz v0, :cond_58

    .line 2461
    .line 2462
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2463
    .line 2464
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2465
    .line 2466
    .line 2467
    move-result-object v0

    .line 2468
    move-object v2, v0

    .line 2469
    check-cast v2, Landroid/content/ComponentName;

    .line 2470
    .line 2471
    :cond_58
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    .line 2472
    .line 2473
    .line 2474
    move-result v0

    .line 2475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2476
    .line 2477
    .line 2478
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    .line 2480
    .line 2481
    return v10

    .line 2482
    :pswitch_52
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2483
    .line 2484
    .line 2485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2486
    .line 2487
    .line 2488
    move-result v0

    .line 2489
    if-eqz v0, :cond_59

    .line 2490
    .line 2491
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2492
    .line 2493
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2494
    .line 2495
    .line 2496
    move-result-object v0

    .line 2497
    move-object v2, v0

    .line 2498
    check-cast v2, Landroid/content/ComponentName;

    .line 2499
    .line 2500
    :cond_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2501
    .line 2502
    .line 2503
    move-result v0

    .line 2504
    if-eqz v0, :cond_5a

    .line 2505
    .line 2506
    move v6, v10

    .line 2507
    :cond_5a
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 2508
    .line 2509
    .line 2510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2511
    .line 2512
    .line 2513
    return v10

    .line 2514
    :pswitch_53
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2515
    .line 2516
    .line 2517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2518
    .line 2519
    .line 2520
    move-result v0

    .line 2521
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabledForUser(I)Z

    .line 2522
    .line 2523
    .line 2524
    move-result v0

    .line 2525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2526
    .line 2527
    .line 2528
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2529
    .line 2530
    .line 2531
    return v10

    .line 2532
    :pswitch_54
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2533
    .line 2534
    .line 2535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2536
    .line 2537
    .line 2538
    move-result v0

    .line 2539
    if-eqz v0, :cond_5b

    .line 2540
    .line 2541
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2542
    .line 2543
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v0

    .line 2547
    move-object v2, v0

    .line 2548
    check-cast v2, Landroid/content/ComponentName;

    .line 2549
    .line 2550
    :cond_5b
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    .line 2551
    .line 2552
    .line 2553
    move-result v0

    .line 2554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2555
    .line 2556
    .line 2557
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2558
    .line 2559
    .line 2560
    return v10

    .line 2561
    :pswitch_55
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2562
    .line 2563
    .line 2564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2565
    .line 2566
    .line 2567
    move-result v0

    .line 2568
    if-eqz v0, :cond_5c

    .line 2569
    .line 2570
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2571
    .line 2572
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2573
    .line 2574
    .line 2575
    move-result-object v0

    .line 2576
    move-object v2, v0

    .line 2577
    check-cast v2, Landroid/content/ComponentName;

    .line 2578
    .line 2579
    :cond_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2580
    .line 2581
    .line 2582
    move-result v0

    .line 2583
    if-eqz v0, :cond_5d

    .line 2584
    .line 2585
    move v6, v10

    .line 2586
    :cond_5d
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 2587
    .line 2588
    .line 2589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2590
    .line 2591
    .line 2592
    return v10

    .line 2593
    :pswitch_56
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2594
    .line 2595
    .line 2596
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2597
    .line 2598
    .line 2599
    move-result v0

    .line 2600
    if-eqz v0, :cond_5e

    .line 2601
    .line 2602
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2603
    .line 2604
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2605
    .line 2606
    .line 2607
    move-result-object v0

    .line 2608
    move-object v2, v0

    .line 2609
    check-cast v2, Landroid/content/ComponentName;

    .line 2610
    .line 2611
    :cond_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v0

    .line 2615
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 2616
    .line 2617
    .line 2618
    move-result v0

    .line 2619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    .line 2621
    .line 2622
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    .line 2624
    .line 2625
    return v10

    .line 2626
    :pswitch_57
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2627
    .line 2628
    .line 2629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2630
    .line 2631
    .line 2632
    move-result v0

    .line 2633
    if-eqz v0, :cond_5f

    .line 2634
    .line 2635
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2636
    .line 2637
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2638
    .line 2639
    .line 2640
    move-result-object v0

    .line 2641
    move-object v2, v0

    .line 2642
    check-cast v2, Landroid/content/ComponentName;

    .line 2643
    .line 2644
    :cond_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2645
    .line 2646
    .line 2647
    move-result-object v0

    .line 2648
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2649
    .line 2650
    .line 2651
    move-result-object v3

    .line 2652
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2653
    .line 2654
    .line 2655
    move-result v1

    .line 2656
    if-eqz v1, :cond_60

    .line 2657
    .line 2658
    move v6, v10

    .line 2659
    :cond_60
    invoke-interface {p0, v2, v0, v3, v6}, Landroid/app/admin/IDevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2660
    .line 2661
    .line 2662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2663
    .line 2664
    .line 2665
    return v10

    .line 2666
    :pswitch_58
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2667
    .line 2668
    .line 2669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2670
    .line 2671
    .line 2672
    move-result v0

    .line 2673
    if-eqz v0, :cond_61

    .line 2674
    .line 2675
    move v6, v10

    .line 2676
    :cond_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v0

    .line 2680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2681
    .line 2682
    .line 2683
    move-result v1

    .line 2684
    invoke-interface {p0, v6, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 2685
    .line 2686
    .line 2687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    .line 2689
    .line 2690
    return v10

    .line 2691
    :pswitch_59
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2692
    .line 2693
    .line 2694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2695
    .line 2696
    .line 2697
    move-result v0

    .line 2698
    if-eqz v0, :cond_62

    .line 2699
    .line 2700
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2701
    .line 2702
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2703
    .line 2704
    .line 2705
    move-result-object v0

    .line 2706
    move-object v2, v0

    .line 2707
    check-cast v2, Landroid/content/ComponentName;

    .line 2708
    .line 2709
    :cond_62
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    .line 2710
    .line 2711
    .line 2712
    move-result v0

    .line 2713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2714
    .line 2715
    .line 2716
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2717
    .line 2718
    .line 2719
    return v10

    .line 2720
    :pswitch_5a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2721
    .line 2722
    .line 2723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2724
    .line 2725
    .line 2726
    move-result v0

    .line 2727
    if-eqz v0, :cond_63

    .line 2728
    .line 2729
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2730
    .line 2731
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2732
    .line 2733
    .line 2734
    move-result-object v0

    .line 2735
    move-object v2, v0

    .line 2736
    check-cast v2, Landroid/content/ComponentName;

    .line 2737
    .line 2738
    :cond_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2739
    .line 2740
    .line 2741
    move-result v0

    .line 2742
    if-eqz v0, :cond_64

    .line 2743
    .line 2744
    move v6, v10

    .line 2745
    :cond_64
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 2746
    .line 2747
    .line 2748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    .line 2750
    .line 2751
    return v10

    .line 2752
    :pswitch_5b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2753
    .line 2754
    .line 2755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2756
    .line 2757
    .line 2758
    move-result v0

    .line 2759
    if-eqz v0, :cond_65

    .line 2760
    .line 2761
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2762
    .line 2763
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2764
    .line 2765
    .line 2766
    move-result-object v0

    .line 2767
    move-object v2, v0

    .line 2768
    check-cast v2, Landroid/content/ComponentName;

    .line 2769
    .line 2770
    :cond_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2771
    .line 2772
    .line 2773
    move-result-object v0

    .line 2774
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2775
    .line 2776
    .line 2777
    move-result-object v1

    .line 2778
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    .line 2780
    .line 2781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2782
    .line 2783
    .line 2784
    return v10

    .line 2785
    :pswitch_5c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2786
    .line 2787
    .line 2788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2789
    .line 2790
    .line 2791
    move-result v0

    .line 2792
    if-eqz v0, :cond_66

    .line 2793
    .line 2794
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2795
    .line 2796
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2797
    .line 2798
    .line 2799
    move-result-object v0

    .line 2800
    move-object v2, v0

    .line 2801
    check-cast v2, Landroid/content/ComponentName;

    .line 2802
    .line 2803
    :cond_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2804
    .line 2805
    .line 2806
    move-result-object v0

    .line 2807
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2808
    .line 2809
    .line 2810
    move-result-object v1

    .line 2811
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    .line 2813
    .line 2814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2815
    .line 2816
    .line 2817
    return v10

    .line 2818
    :pswitch_5d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2819
    .line 2820
    .line 2821
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2822
    .line 2823
    .line 2824
    move-result-object v0

    .line 2825
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    .line 2826
    .line 2827
    .line 2828
    move-result v0

    .line 2829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2830
    .line 2831
    .line 2832
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2833
    .line 2834
    .line 2835
    return v10

    .line 2836
    :pswitch_5e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2837
    .line 2838
    .line 2839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2840
    .line 2841
    .line 2842
    move-result v0

    .line 2843
    if-eqz v0, :cond_67

    .line 2844
    .line 2845
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2846
    .line 2847
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2848
    .line 2849
    .line 2850
    move-result-object v0

    .line 2851
    move-object v2, v0

    .line 2852
    check-cast v2, Landroid/content/ComponentName;

    .line 2853
    .line 2854
    :cond_67
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    .line 2855
    .line 2856
    .line 2857
    move-result-object v0

    .line 2858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2859
    .line 2860
    .line 2861
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2862
    .line 2863
    .line 2864
    return v10

    .line 2865
    :pswitch_5f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2866
    .line 2867
    .line 2868
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2869
    .line 2870
    .line 2871
    move-result v0

    .line 2872
    if-eqz v0, :cond_68

    .line 2873
    .line 2874
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2875
    .line 2876
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2877
    .line 2878
    .line 2879
    move-result-object v0

    .line 2880
    move-object v2, v0

    .line 2881
    check-cast v2, Landroid/content/ComponentName;

    .line 2882
    .line 2883
    :cond_68
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2884
    .line 2885
    .line 2886
    move-result-object v0

    .line 2887
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 2888
    .line 2889
    .line 2890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2891
    .line 2892
    .line 2893
    return v10

    .line 2894
    :pswitch_60
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2895
    .line 2896
    .line 2897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2898
    .line 2899
    .line 2900
    move-result v0

    .line 2901
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    .line 2902
    .line 2903
    .line 2904
    move-result-object v0

    .line 2905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2906
    .line 2907
    .line 2908
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2909
    .line 2910
    .line 2911
    return v10

    .line 2912
    :pswitch_61
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2913
    .line 2914
    .line 2915
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    .line 2916
    .line 2917
    .line 2918
    move-result-object v0

    .line 2919
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2920
    .line 2921
    .line 2922
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2923
    .line 2924
    .line 2925
    return v10

    .line 2926
    :pswitch_62
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2927
    .line 2928
    .line 2929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2930
    .line 2931
    .line 2932
    move-result v0

    .line 2933
    if-eqz v0, :cond_69

    .line 2934
    .line 2935
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2936
    .line 2937
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2938
    .line 2939
    .line 2940
    move-result-object v0

    .line 2941
    move-object v2, v0

    .line 2942
    check-cast v2, Landroid/content/ComponentName;

    .line 2943
    .line 2944
    :cond_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2945
    .line 2946
    .line 2947
    move-result-object v0

    .line 2948
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2949
    .line 2950
    .line 2951
    move-result v1

    .line 2952
    if-eqz v1, :cond_6a

    .line 2953
    .line 2954
    move v6, v10

    .line 2955
    :cond_6a
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2956
    .line 2957
    .line 2958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2959
    .line 2960
    .line 2961
    return v10

    .line 2962
    :pswitch_63
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2963
    .line 2964
    .line 2965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2966
    .line 2967
    .line 2968
    move-result v0

    .line 2969
    if-eqz v0, :cond_6b

    .line 2970
    .line 2971
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2972
    .line 2973
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2974
    .line 2975
    .line 2976
    move-result-object v0

    .line 2977
    check-cast v0, Landroid/content/ComponentName;

    .line 2978
    .line 2979
    goto :goto_17

    .line 2980
    :cond_6b
    move-object v0, v2

    .line 2981
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2982
    .line 2983
    .line 2984
    move-result-object v3

    .line 2985
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2986
    .line 2987
    .line 2988
    move-result v4

    .line 2989
    if-eqz v4, :cond_6c

    .line 2990
    .line 2991
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2992
    .line 2993
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 2994
    .line 2995
    .line 2996
    move-result-object v1

    .line 2997
    move-object v2, v1

    .line 2998
    check-cast v2, Landroid/content/Intent;

    .line 2999
    .line 3000
    :cond_6c
    invoke-interface {p0, v0, v3, v2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    .line 3001
    .line 3002
    .line 3003
    move-result v0

    .line 3004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3005
    .line 3006
    .line 3007
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3008
    .line 3009
    .line 3010
    return v10

    .line 3011
    :pswitch_64
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3012
    .line 3013
    .line 3014
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3015
    .line 3016
    .line 3017
    move-result v0

    .line 3018
    if-eqz v0, :cond_6d

    .line 3019
    .line 3020
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3021
    .line 3022
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3023
    .line 3024
    .line 3025
    move-result-object v0

    .line 3026
    move-object v2, v0

    .line 3027
    check-cast v2, Landroid/content/ComponentName;

    .line 3028
    .line 3029
    :cond_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3030
    .line 3031
    .line 3032
    move-result-object v0

    .line 3033
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3034
    .line 3035
    .line 3036
    move-result-object v1

    .line 3037
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    .line 3039
    .line 3040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3041
    .line 3042
    .line 3043
    return v10

    .line 3044
    :pswitch_65
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3045
    .line 3046
    .line 3047
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3048
    .line 3049
    .line 3050
    move-result v0

    .line 3051
    if-eqz v0, :cond_6e

    .line 3052
    .line 3053
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3054
    .line 3055
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3056
    .line 3057
    .line 3058
    move-result-object v0

    .line 3059
    check-cast v0, Landroid/content/ComponentName;

    .line 3060
    .line 3061
    goto :goto_18

    .line 3062
    :cond_6e
    move-object v0, v2

    .line 3063
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3064
    .line 3065
    .line 3066
    move-result v3

    .line 3067
    if-eqz v3, :cond_6f

    .line 3068
    .line 3069
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3070
    .line 3071
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3072
    .line 3073
    .line 3074
    move-result-object v1

    .line 3075
    move-object v2, v1

    .line 3076
    check-cast v2, Landroid/os/UserHandle;

    .line 3077
    .line 3078
    :cond_6f
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    .line 3079
    .line 3080
    .line 3081
    move-result v0

    .line 3082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3083
    .line 3084
    .line 3085
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3086
    .line 3087
    .line 3088
    return v10

    .line 3089
    :pswitch_66
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3090
    .line 3091
    .line 3092
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3093
    .line 3094
    .line 3095
    move-result v0

    .line 3096
    if-eqz v0, :cond_70

    .line 3097
    .line 3098
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3099
    .line 3100
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3101
    .line 3102
    .line 3103
    move-result-object v0

    .line 3104
    check-cast v0, Landroid/content/ComponentName;

    .line 3105
    .line 3106
    goto :goto_19

    .line 3107
    :cond_70
    move-object v0, v2

    .line 3108
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3109
    .line 3110
    .line 3111
    move-result v3

    .line 3112
    if-eqz v3, :cond_71

    .line 3113
    .line 3114
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3115
    .line 3116
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3117
    .line 3118
    .line 3119
    move-result-object v1

    .line 3120
    move-object v2, v1

    .line 3121
    check-cast v2, Landroid/os/UserHandle;

    .line 3122
    .line 3123
    :cond_71
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    .line 3124
    .line 3125
    .line 3126
    move-result v0

    .line 3127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3128
    .line 3129
    .line 3130
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    .line 3132
    .line 3133
    return v10

    .line 3134
    :pswitch_67
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3135
    .line 3136
    .line 3137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3138
    .line 3139
    .line 3140
    move-result v0

    .line 3141
    if-eqz v0, :cond_72

    .line 3142
    .line 3143
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3144
    .line 3145
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3146
    .line 3147
    .line 3148
    move-result-object v0

    .line 3149
    check-cast v0, Landroid/content/ComponentName;

    .line 3150
    .line 3151
    move-object v3, v0

    .line 3152
    goto :goto_1a

    .line 3153
    :cond_72
    move-object v3, v2

    .line 3154
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3155
    .line 3156
    .line 3157
    move-result-object v4

    .line 3158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3159
    .line 3160
    .line 3161
    move-result v0

    .line 3162
    if-eqz v0, :cond_73

    .line 3163
    .line 3164
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3165
    .line 3166
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3167
    .line 3168
    .line 3169
    move-result-object v0

    .line 3170
    check-cast v0, Landroid/content/ComponentName;

    .line 3171
    .line 3172
    move-object v5, v0

    .line 3173
    goto :goto_1b

    .line 3174
    :cond_73
    move-object v5, v2

    .line 3175
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3176
    .line 3177
    .line 3178
    move-result v0

    .line 3179
    if-eqz v0, :cond_74

    .line 3180
    .line 3181
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3182
    .line 3183
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3184
    .line 3185
    .line 3186
    move-result-object v0

    .line 3187
    check-cast v0, Landroid/os/PersistableBundle;

    .line 3188
    .line 3189
    move-object v7, v0

    .line 3190
    goto :goto_1c

    .line 3191
    :cond_74
    move-object v7, v2

    .line 3192
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3193
    .line 3194
    .line 3195
    move-result v11

    .line 3196
    move-object v0, p0

    .line 3197
    move-object v1, v3

    .line 3198
    move-object v2, v4

    .line 3199
    move-object v3, v5

    .line 3200
    move-object v4, v7

    .line 3201
    move v5, v11

    .line 3202
    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    .line 3203
    .line 3204
    .line 3205
    move-result-object v0

    .line 3206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3207
    .line 3208
    .line 3209
    if-eqz v0, :cond_75

    .line 3210
    .line 3211
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3212
    .line 3213
    .line 3214
    invoke-virtual {v0, v9, v10}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3215
    .line 3216
    .line 3217
    goto :goto_1d

    .line 3218
    :cond_75
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3219
    .line 3220
    .line 3221
    :goto_1d
    return v10

    .line 3222
    :pswitch_68
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3223
    .line 3224
    .line 3225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3226
    .line 3227
    .line 3228
    move-result v0

    .line 3229
    if-eqz v0, :cond_76

    .line 3230
    .line 3231
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3232
    .line 3233
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3234
    .line 3235
    .line 3236
    move-result-object v0

    .line 3237
    move-object v2, v0

    .line 3238
    check-cast v2, Landroid/content/ComponentName;

    .line 3239
    .line 3240
    :cond_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3241
    .line 3242
    .line 3243
    move-result-object v0

    .line 3244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3245
    .line 3246
    .line 3247
    move-result-object v1

    .line 3248
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3249
    .line 3250
    .line 3251
    move-result v0

    .line 3252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3253
    .line 3254
    .line 3255
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3256
    .line 3257
    .line 3258
    return v10

    .line 3259
    :pswitch_69
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3260
    .line 3261
    .line 3262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3263
    .line 3264
    .line 3265
    move-result v0

    .line 3266
    if-eqz v0, :cond_77

    .line 3267
    .line 3268
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3269
    .line 3270
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3271
    .line 3272
    .line 3273
    move-result-object v0

    .line 3274
    move-object v2, v0

    .line 3275
    check-cast v2, Landroid/content/ComponentName;

    .line 3276
    .line 3277
    :cond_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3278
    .line 3279
    .line 3280
    move-result-object v0

    .line 3281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3282
    .line 3283
    .line 3284
    move-result-object v3

    .line 3285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3286
    .line 3287
    .line 3288
    move-result v1

    .line 3289
    if-eqz v1, :cond_78

    .line 3290
    .line 3291
    move v6, v10

    .line 3292
    :cond_78
    invoke-interface {p0, v2, v0, v3, v6}, Landroid/app/admin/IDevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3293
    .line 3294
    .line 3295
    move-result v0

    .line 3296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3297
    .line 3298
    .line 3299
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    .line 3301
    .line 3302
    return v10

    .line 3303
    :pswitch_6a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3304
    .line 3305
    .line 3306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3307
    .line 3308
    .line 3309
    move-result-object v0

    .line 3310
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 3311
    .line 3312
    .line 3313
    move-result-object v0

    .line 3314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3315
    .line 3316
    .line 3317
    if-eqz v0, :cond_79

    .line 3318
    .line 3319
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3320
    .line 3321
    .line 3322
    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3323
    .line 3324
    .line 3325
    goto :goto_1e

    .line 3326
    :cond_79
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3327
    .line 3328
    .line 3329
    :goto_1e
    return v10

    .line 3330
    :pswitch_6b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3331
    .line 3332
    .line 3333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3334
    .line 3335
    .line 3336
    move-result-object v0

    .line 3337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3338
    .line 3339
    .line 3340
    move-result v1

    .line 3341
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    .line 3342
    .line 3343
    .line 3344
    move-result v0

    .line 3345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3346
    .line 3347
    .line 3348
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3349
    .line 3350
    .line 3351
    return v10

    .line 3352
    :pswitch_6c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3353
    .line 3354
    .line 3355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3356
    .line 3357
    .line 3358
    move-result v0

    .line 3359
    if-eqz v0, :cond_7a

    .line 3360
    .line 3361
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3362
    .line 3363
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3364
    .line 3365
    .line 3366
    move-result-object v0

    .line 3367
    move-object v2, v0

    .line 3368
    check-cast v2, Landroid/content/ComponentName;

    .line 3369
    .line 3370
    :cond_7a
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    .line 3371
    .line 3372
    .line 3373
    move-result-object v0

    .line 3374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    .line 3376
    .line 3377
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3378
    .line 3379
    .line 3380
    return v10

    .line 3381
    :pswitch_6d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3382
    .line 3383
    .line 3384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3385
    .line 3386
    .line 3387
    move-result v0

    .line 3388
    if-eqz v0, :cond_7b

    .line 3389
    .line 3390
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3391
    .line 3392
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3393
    .line 3394
    .line 3395
    move-result-object v0

    .line 3396
    move-object v2, v0

    .line 3397
    check-cast v2, Landroid/content/ComponentName;

    .line 3398
    .line 3399
    :cond_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 3400
    .line 3401
    .line 3402
    move-result-object v0

    .line 3403
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    .line 3404
    .line 3405
    .line 3406
    move-result v0

    .line 3407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3408
    .line 3409
    .line 3410
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3411
    .line 3412
    .line 3413
    return v10

    .line 3414
    :pswitch_6e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3415
    .line 3416
    .line 3417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3418
    .line 3419
    .line 3420
    move-result v0

    .line 3421
    if-eqz v0, :cond_7c

    .line 3422
    .line 3423
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3424
    .line 3425
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3426
    .line 3427
    .line 3428
    move-result-object v0

    .line 3429
    move-object v2, v0

    .line 3430
    check-cast v2, Landroid/content/ComponentName;

    .line 3431
    .line 3432
    :cond_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3433
    .line 3434
    .line 3435
    move-result-object v0

    .line 3436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3437
    .line 3438
    .line 3439
    move-result v1

    .line 3440
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 3441
    .line 3442
    .line 3443
    move-result v0

    .line 3444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3445
    .line 3446
    .line 3447
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3448
    .line 3449
    .line 3450
    return v10

    .line 3451
    :pswitch_6f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3452
    .line 3453
    .line 3454
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    .line 3455
    .line 3456
    .line 3457
    move-result-object v0

    .line 3458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3459
    .line 3460
    .line 3461
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3462
    .line 3463
    .line 3464
    return v10

    .line 3465
    :pswitch_70
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3466
    .line 3467
    .line 3468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3469
    .line 3470
    .line 3471
    move-result v0

    .line 3472
    if-eqz v0, :cond_7d

    .line 3473
    .line 3474
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3475
    .line 3476
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3477
    .line 3478
    .line 3479
    move-result-object v0

    .line 3480
    move-object v2, v0

    .line 3481
    check-cast v2, Landroid/content/ComponentName;

    .line 3482
    .line 3483
    :cond_7d
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    .line 3484
    .line 3485
    .line 3486
    move-result-object v0

    .line 3487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3488
    .line 3489
    .line 3490
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3491
    .line 3492
    .line 3493
    return v10

    .line 3494
    :pswitch_71
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3495
    .line 3496
    .line 3497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3498
    .line 3499
    .line 3500
    move-result v0

    .line 3501
    if-eqz v0, :cond_7e

    .line 3502
    .line 3503
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3504
    .line 3505
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3506
    .line 3507
    .line 3508
    move-result-object v0

    .line 3509
    move-object v2, v0

    .line 3510
    check-cast v2, Landroid/content/ComponentName;

    .line 3511
    .line 3512
    :cond_7e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3513
    .line 3514
    .line 3515
    move-result-object v0

    .line 3516
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 3517
    .line 3518
    .line 3519
    move-result-object v0

    .line 3520
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 3521
    .line 3522
    .line 3523
    move-result-object v0

    .line 3524
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    .line 3525
    .line 3526
    .line 3527
    move-result v0

    .line 3528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3529
    .line 3530
    .line 3531
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3532
    .line 3533
    .line 3534
    return v10

    .line 3535
    :pswitch_72
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3536
    .line 3537
    .line 3538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3539
    .line 3540
    .line 3541
    move-result v0

    .line 3542
    if-eqz v0, :cond_7f

    .line 3543
    .line 3544
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3545
    .line 3546
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3547
    .line 3548
    .line 3549
    move-result-object v0

    .line 3550
    move-object v2, v0

    .line 3551
    check-cast v2, Landroid/content/ComponentName;

    .line 3552
    .line 3553
    :cond_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3554
    .line 3555
    .line 3556
    move-result-object v0

    .line 3557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3558
    .line 3559
    .line 3560
    move-result v1

    .line 3561
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 3562
    .line 3563
    .line 3564
    move-result v0

    .line 3565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3566
    .line 3567
    .line 3568
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3569
    .line 3570
    .line 3571
    return v10

    .line 3572
    :pswitch_73
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3573
    .line 3574
    .line 3575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3576
    .line 3577
    .line 3578
    move-result v0

    .line 3579
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    .line 3580
    .line 3581
    .line 3582
    move-result-object v0

    .line 3583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3584
    .line 3585
    .line 3586
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3587
    .line 3588
    .line 3589
    return v10

    .line 3590
    :pswitch_74
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3591
    .line 3592
    .line 3593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3594
    .line 3595
    .line 3596
    move-result v0

    .line 3597
    if-eqz v0, :cond_80

    .line 3598
    .line 3599
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3600
    .line 3601
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3602
    .line 3603
    .line 3604
    move-result-object v0

    .line 3605
    move-object v2, v0

    .line 3606
    check-cast v2, Landroid/content/ComponentName;

    .line 3607
    .line 3608
    :cond_80
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    .line 3609
    .line 3610
    .line 3611
    move-result-object v0

    .line 3612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3613
    .line 3614
    .line 3615
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3616
    .line 3617
    .line 3618
    return v10

    .line 3619
    :pswitch_75
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3620
    .line 3621
    .line 3622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3623
    .line 3624
    .line 3625
    move-result v0

    .line 3626
    if-eqz v0, :cond_81

    .line 3627
    .line 3628
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3629
    .line 3630
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3631
    .line 3632
    .line 3633
    move-result-object v0

    .line 3634
    move-object v2, v0

    .line 3635
    check-cast v2, Landroid/content/ComponentName;

    .line 3636
    .line 3637
    :cond_81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3638
    .line 3639
    .line 3640
    move-result-object v0

    .line 3641
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 3642
    .line 3643
    .line 3644
    move-result-object v0

    .line 3645
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 3646
    .line 3647
    .line 3648
    move-result-object v0

    .line 3649
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    .line 3650
    .line 3651
    .line 3652
    move-result v0

    .line 3653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3654
    .line 3655
    .line 3656
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3657
    .line 3658
    .line 3659
    return v10

    .line 3660
    :pswitch_76
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3661
    .line 3662
    .line 3663
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3664
    .line 3665
    .line 3666
    move-result v0

    .line 3667
    if-eqz v0, :cond_82

    .line 3668
    .line 3669
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3670
    .line 3671
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3672
    .line 3673
    .line 3674
    move-result-object v0

    .line 3675
    move-object v2, v0

    .line 3676
    check-cast v2, Landroid/content/ComponentName;

    .line 3677
    .line 3678
    :cond_82
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 3679
    .line 3680
    .line 3681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3682
    .line 3683
    .line 3684
    return v10

    .line 3685
    :pswitch_77
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3686
    .line 3687
    .line 3688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3689
    .line 3690
    .line 3691
    move-result v0

    .line 3692
    if-eqz v0, :cond_83

    .line 3693
    .line 3694
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3695
    .line 3696
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3697
    .line 3698
    .line 3699
    move-result-object v0

    .line 3700
    check-cast v0, Landroid/content/ComponentName;

    .line 3701
    .line 3702
    goto :goto_1f

    .line 3703
    :cond_83
    move-object v0, v2

    .line 3704
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3705
    .line 3706
    .line 3707
    move-result v3

    .line 3708
    if-eqz v3, :cond_84

    .line 3709
    .line 3710
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3711
    .line 3712
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3713
    .line 3714
    .line 3715
    move-result-object v2

    .line 3716
    check-cast v2, Landroid/content/IntentFilter;

    .line 3717
    .line 3718
    :cond_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3719
    .line 3720
    .line 3721
    move-result v1

    .line 3722
    invoke-interface {p0, v0, v2, v1}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 3723
    .line 3724
    .line 3725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3726
    .line 3727
    .line 3728
    return v10

    .line 3729
    :pswitch_78
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3730
    .line 3731
    .line 3732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3733
    .line 3734
    .line 3735
    move-result v0

    .line 3736
    if-eqz v0, :cond_85

    .line 3737
    .line 3738
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3739
    .line 3740
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3741
    .line 3742
    .line 3743
    move-result-object v0

    .line 3744
    move-object v2, v0

    .line 3745
    check-cast v2, Landroid/content/ComponentName;

    .line 3746
    .line 3747
    :cond_85
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    .line 3748
    .line 3749
    .line 3750
    move-result-object v0

    .line 3751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3752
    .line 3753
    .line 3754
    if-eqz v0, :cond_86

    .line 3755
    .line 3756
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3757
    .line 3758
    .line 3759
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3760
    .line 3761
    .line 3762
    goto :goto_20

    .line 3763
    :cond_86
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3764
    .line 3765
    .line 3766
    :goto_20
    return v10

    .line 3767
    :pswitch_79
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3768
    .line 3769
    .line 3770
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3771
    .line 3772
    .line 3773
    move-result v0

    .line 3774
    if-eqz v0, :cond_87

    .line 3775
    .line 3776
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3777
    .line 3778
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3779
    .line 3780
    .line 3781
    move-result-object v0

    .line 3782
    move-object v2, v0

    .line 3783
    check-cast v2, Landroid/content/ComponentName;

    .line 3784
    .line 3785
    :cond_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3786
    .line 3787
    .line 3788
    move-result-object v0

    .line 3789
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3790
    .line 3791
    .line 3792
    move-result v1

    .line 3793
    if-eqz v1, :cond_88

    .line 3794
    .line 3795
    move v6, v10

    .line 3796
    :cond_88
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 3797
    .line 3798
    .line 3799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3800
    .line 3801
    .line 3802
    return v10

    .line 3803
    :pswitch_7a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3804
    .line 3805
    .line 3806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3807
    .line 3808
    .line 3809
    move-result v0

    .line 3810
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    .line 3811
    .line 3812
    .line 3813
    move-result-object v0

    .line 3814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3815
    .line 3816
    .line 3817
    if-eqz v0, :cond_89

    .line 3818
    .line 3819
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3820
    .line 3821
    .line 3822
    invoke-virtual {v0, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3823
    .line 3824
    .line 3825
    goto :goto_21

    .line 3826
    :cond_89
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3827
    .line 3828
    .line 3829
    :goto_21
    return v10

    .line 3830
    :pswitch_7b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3831
    .line 3832
    .line 3833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3834
    .line 3835
    .line 3836
    move-result v0

    .line 3837
    if-eqz v0, :cond_8a

    .line 3838
    .line 3839
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3840
    .line 3841
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3842
    .line 3843
    .line 3844
    move-result-object v0

    .line 3845
    check-cast v0, Landroid/content/ComponentName;

    .line 3846
    .line 3847
    goto :goto_22

    .line 3848
    :cond_8a
    move-object v0, v2

    .line 3849
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3850
    .line 3851
    .line 3852
    move-result v3

    .line 3853
    if-eqz v3, :cond_8b

    .line 3854
    .line 3855
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3856
    .line 3857
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3858
    .line 3859
    .line 3860
    move-result-object v1

    .line 3861
    move-object v2, v1

    .line 3862
    check-cast v2, Landroid/content/ComponentName;

    .line 3863
    .line 3864
    :cond_8b
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 3865
    .line 3866
    .line 3867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3868
    .line 3869
    .line 3870
    return v10

    .line 3871
    :pswitch_7c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3872
    .line 3873
    .line 3874
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3875
    .line 3876
    .line 3877
    move-result-object v0

    .line 3878
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    .line 3879
    .line 3880
    .line 3881
    move-result v0

    .line 3882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3883
    .line 3884
    .line 3885
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3886
    .line 3887
    .line 3888
    return v10

    .line 3889
    :pswitch_7d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3890
    .line 3891
    .line 3892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3893
    .line 3894
    .line 3895
    move-result v0

    .line 3896
    if-eqz v0, :cond_8c

    .line 3897
    .line 3898
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3899
    .line 3900
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3901
    .line 3902
    .line 3903
    move-result-object v0

    .line 3904
    move-object v2, v0

    .line 3905
    check-cast v2, Landroid/content/ComponentName;

    .line 3906
    .line 3907
    :cond_8c
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 3908
    .line 3909
    .line 3910
    move-result-object v0

    .line 3911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3912
    .line 3913
    .line 3914
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3915
    .line 3916
    .line 3917
    return v10

    .line 3918
    :pswitch_7e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3919
    .line 3920
    .line 3921
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3922
    .line 3923
    .line 3924
    move-result v0

    .line 3925
    if-eqz v0, :cond_8d

    .line 3926
    .line 3927
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3928
    .line 3929
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3930
    .line 3931
    .line 3932
    move-result-object v0

    .line 3933
    move-object v2, v0

    .line 3934
    check-cast v2, Landroid/content/ComponentName;

    .line 3935
    .line 3936
    :cond_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3937
    .line 3938
    .line 3939
    move-result-object v0

    .line 3940
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    .line 3941
    .line 3942
    .line 3943
    move-result v0

    .line 3944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3945
    .line 3946
    .line 3947
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3948
    .line 3949
    .line 3950
    return v10

    .line 3951
    :pswitch_7f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3952
    .line 3953
    .line 3954
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 3955
    .line 3956
    .line 3957
    move-result v0

    .line 3958
    if-eqz v0, :cond_8e

    .line 3959
    .line 3960
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3961
    .line 3962
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 3963
    .line 3964
    .line 3965
    move-result-object v0

    .line 3966
    move-object v2, v0

    .line 3967
    check-cast v2, Landroid/content/ComponentName;

    .line 3968
    .line 3969
    :cond_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3970
    .line 3971
    .line 3972
    move-result-object v0

    .line 3973
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 3974
    .line 3975
    .line 3976
    move-result-object v1

    .line 3977
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 3978
    .line 3979
    .line 3980
    move-result-object v0

    .line 3981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3982
    .line 3983
    .line 3984
    if-eqz v0, :cond_8f

    .line 3985
    .line 3986
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3987
    .line 3988
    .line 3989
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3990
    .line 3991
    .line 3992
    goto :goto_23

    .line 3993
    :cond_8f
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3994
    .line 3995
    .line 3996
    :goto_23
    return v10

    .line 3997
    :pswitch_80
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3998
    .line 3999
    .line 4000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4001
    .line 4002
    .line 4003
    move-result v0

    .line 4004
    if-eqz v0, :cond_90

    .line 4005
    .line 4006
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4007
    .line 4008
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4009
    .line 4010
    .line 4011
    move-result-object v0

    .line 4012
    check-cast v0, Landroid/content/ComponentName;

    .line 4013
    .line 4014
    goto :goto_24

    .line 4015
    :cond_90
    move-object v0, v2

    .line 4016
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4017
    .line 4018
    .line 4019
    move-result-object v3

    .line 4020
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4021
    .line 4022
    .line 4023
    move-result-object v4

    .line 4024
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4025
    .line 4026
    .line 4027
    move-result v5

    .line 4028
    if-eqz v5, :cond_91

    .line 4029
    .line 4030
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4031
    .line 4032
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4033
    .line 4034
    .line 4035
    move-result-object v1

    .line 4036
    move-object v2, v1

    .line 4037
    check-cast v2, Landroid/os/Bundle;

    .line 4038
    .line 4039
    :cond_91
    invoke-interface {p0, v0, v3, v4, v2}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4040
    .line 4041
    .line 4042
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4043
    .line 4044
    .line 4045
    return v10

    .line 4046
    :pswitch_81
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4047
    .line 4048
    .line 4049
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4050
    .line 4051
    .line 4052
    move-result v0

    .line 4053
    if-eqz v0, :cond_92

    .line 4054
    .line 4055
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4056
    .line 4057
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4058
    .line 4059
    .line 4060
    move-result-object v0

    .line 4061
    move-object v2, v0

    .line 4062
    check-cast v2, Landroid/content/ComponentName;

    .line 4063
    .line 4064
    :cond_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4065
    .line 4066
    .line 4067
    move-result-object v0

    .line 4068
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4069
    .line 4070
    .line 4071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4072
    .line 4073
    .line 4074
    return v10

    .line 4075
    :pswitch_82
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4076
    .line 4077
    .line 4078
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4079
    .line 4080
    .line 4081
    move-result v0

    .line 4082
    if-eqz v0, :cond_93

    .line 4083
    .line 4084
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4085
    .line 4086
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4087
    .line 4088
    .line 4089
    move-result-object v0

    .line 4090
    check-cast v0, Landroid/content/ComponentName;

    .line 4091
    .line 4092
    goto :goto_25

    .line 4093
    :cond_93
    move-object v0, v2

    .line 4094
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4095
    .line 4096
    .line 4097
    move-result v3

    .line 4098
    if-eqz v3, :cond_94

    .line 4099
    .line 4100
    sget-object v3, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4101
    .line 4102
    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4103
    .line 4104
    .line 4105
    move-result-object v3

    .line 4106
    check-cast v3, Landroid/content/IntentFilter;

    .line 4107
    .line 4108
    goto :goto_26

    .line 4109
    :cond_94
    move-object v3, v2

    .line 4110
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4111
    .line 4112
    .line 4113
    move-result v4

    .line 4114
    if-eqz v4, :cond_95

    .line 4115
    .line 4116
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4117
    .line 4118
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4119
    .line 4120
    .line 4121
    move-result-object v1

    .line 4122
    move-object v2, v1

    .line 4123
    check-cast v2, Landroid/content/ComponentName;

    .line 4124
    .line 4125
    :cond_95
    invoke-interface {p0, v0, v3, v2}, Landroid/app/admin/IDevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 4126
    .line 4127
    .line 4128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4129
    .line 4130
    .line 4131
    return v10

    .line 4132
    :pswitch_83
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4133
    .line 4134
    .line 4135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4136
    .line 4137
    .line 4138
    move-result v0

    .line 4139
    if-eqz v0, :cond_96

    .line 4140
    .line 4141
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4142
    .line 4143
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4144
    .line 4145
    .line 4146
    move-result-object v0

    .line 4147
    move-object v2, v0

    .line 4148
    check-cast v2, Landroid/content/ComponentName;

    .line 4149
    .line 4150
    :cond_96
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 4151
    .line 4152
    .line 4153
    move-result-object v0

    .line 4154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4155
    .line 4156
    .line 4157
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4158
    .line 4159
    .line 4160
    return v10

    .line 4161
    :pswitch_84
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4162
    .line 4163
    .line 4164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4165
    .line 4166
    .line 4167
    move-result v0

    .line 4168
    if-eqz v0, :cond_97

    .line 4169
    .line 4170
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4171
    .line 4172
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4173
    .line 4174
    .line 4175
    move-result-object v0

    .line 4176
    move-object v2, v0

    .line 4177
    check-cast v2, Landroid/content/ComponentName;

    .line 4178
    .line 4179
    :cond_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4180
    .line 4181
    .line 4182
    move-result-object v0

    .line 4183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4184
    .line 4185
    .line 4186
    move-result v1

    .line 4187
    if-eqz v1, :cond_98

    .line 4188
    .line 4189
    move v6, v10

    .line 4190
    :cond_98
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    .line 4191
    .line 4192
    .line 4193
    move-result v0

    .line 4194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4195
    .line 4196
    .line 4197
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4198
    .line 4199
    .line 4200
    return v10

    .line 4201
    :pswitch_85
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4202
    .line 4203
    .line 4204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4205
    .line 4206
    .line 4207
    move-result v0

    .line 4208
    if-eqz v0, :cond_99

    .line 4209
    .line 4210
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4211
    .line 4212
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4213
    .line 4214
    .line 4215
    move-result-object v0

    .line 4216
    move-object v2, v0

    .line 4217
    check-cast v2, Landroid/content/ComponentName;

    .line 4218
    .line 4219
    :cond_99
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 4220
    .line 4221
    .line 4222
    move-result-object v0

    .line 4223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4224
    .line 4225
    .line 4226
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4227
    .line 4228
    .line 4229
    return v10

    .line 4230
    :pswitch_86
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4231
    .line 4232
    .line 4233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4234
    .line 4235
    .line 4236
    move-result v0

    .line 4237
    if-eqz v0, :cond_9a

    .line 4238
    .line 4239
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4240
    .line 4241
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4242
    .line 4243
    .line 4244
    move-result-object v0

    .line 4245
    move-object v2, v0

    .line 4246
    check-cast v2, Landroid/content/ComponentName;

    .line 4247
    .line 4248
    :cond_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4249
    .line 4250
    .line 4251
    move-result-object v0

    .line 4252
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4253
    .line 4254
    .line 4255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4256
    .line 4257
    .line 4258
    return v10

    .line 4259
    :pswitch_87
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4260
    .line 4261
    .line 4262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4263
    .line 4264
    .line 4265
    move-result v0

    .line 4266
    if-eqz v0, :cond_9b

    .line 4267
    .line 4268
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4269
    .line 4270
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4271
    .line 4272
    .line 4273
    move-result-object v0

    .line 4274
    move-object v2, v0

    .line 4275
    check-cast v2, Landroid/content/ComponentName;

    .line 4276
    .line 4277
    :cond_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4278
    .line 4279
    .line 4280
    move-result-object v0

    .line 4281
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    .line 4282
    .line 4283
    .line 4284
    move-result-object v0

    .line 4285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4286
    .line 4287
    .line 4288
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4289
    .line 4290
    .line 4291
    return v10

    .line 4292
    :pswitch_88
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4293
    .line 4294
    .line 4295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4296
    .line 4297
    .line 4298
    move-result v0

    .line 4299
    if-eqz v0, :cond_9c

    .line 4300
    .line 4301
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4302
    .line 4303
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4304
    .line 4305
    .line 4306
    move-result-object v0

    .line 4307
    move-object v2, v0

    .line 4308
    check-cast v2, Landroid/content/ComponentName;

    .line 4309
    .line 4310
    :cond_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4311
    .line 4312
    .line 4313
    move-result-object v0

    .line 4314
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    .line 4315
    .line 4316
    .line 4317
    move-result-object v0

    .line 4318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4319
    .line 4320
    .line 4321
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4322
    .line 4323
    .line 4324
    return v10

    .line 4325
    :pswitch_89
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4326
    .line 4327
    .line 4328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4329
    .line 4330
    .line 4331
    move-result v0

    .line 4332
    if-eqz v0, :cond_9d

    .line 4333
    .line 4334
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4335
    .line 4336
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4337
    .line 4338
    .line 4339
    move-result-object v0

    .line 4340
    move-object v2, v0

    .line 4341
    check-cast v2, Landroid/content/ComponentName;

    .line 4342
    .line 4343
    :cond_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4344
    .line 4345
    .line 4346
    move-result-object v0

    .line 4347
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 4348
    .line 4349
    .line 4350
    move-result-object v1

    .line 4351
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 4352
    .line 4353
    .line 4354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4355
    .line 4356
    .line 4357
    return v10

    .line 4358
    :pswitch_8a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4359
    .line 4360
    .line 4361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4362
    .line 4363
    .line 4364
    move-result v0

    .line 4365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4366
    .line 4367
    .line 4368
    move-result v3

    .line 4369
    if-eqz v3, :cond_9e

    .line 4370
    .line 4371
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4372
    .line 4373
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4374
    .line 4375
    .line 4376
    move-result-object v2

    .line 4377
    check-cast v2, Landroid/net/Uri;

    .line 4378
    .line 4379
    :cond_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4380
    .line 4381
    .line 4382
    move-result-object v3

    .line 4383
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 4384
    .line 4385
    .line 4386
    move-result-object v1

    .line 4387
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/app/admin/IDevicePolicyManager;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4388
    .line 4389
    .line 4390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4391
    .line 4392
    .line 4393
    return v10

    .line 4394
    :pswitch_8b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4395
    .line 4396
    .line 4397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4398
    .line 4399
    .line 4400
    move-result v0

    .line 4401
    if-eqz v0, :cond_9f

    .line 4402
    .line 4403
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4404
    .line 4405
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4406
    .line 4407
    .line 4408
    move-result-object v0

    .line 4409
    move-object v2, v0

    .line 4410
    check-cast v2, Landroid/content/ComponentName;

    .line 4411
    .line 4412
    :cond_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4413
    .line 4414
    .line 4415
    move-result-object v0

    .line 4416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4417
    .line 4418
    .line 4419
    move-result-object v1

    .line 4420
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4421
    .line 4422
    .line 4423
    move-result v0

    .line 4424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4425
    .line 4426
    .line 4427
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4428
    .line 4429
    .line 4430
    return v10

    .line 4431
    :pswitch_8c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4432
    .line 4433
    .line 4434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4435
    .line 4436
    .line 4437
    move-result v0

    .line 4438
    if-eqz v0, :cond_a0

    .line 4439
    .line 4440
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4441
    .line 4442
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4443
    .line 4444
    .line 4445
    move-result-object v0

    .line 4446
    check-cast v0, Landroid/content/ComponentName;

    .line 4447
    .line 4448
    move-object v2, v0

    .line 4449
    :cond_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4450
    .line 4451
    .line 4452
    move-result-object v3

    .line 4453
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 4454
    .line 4455
    .line 4456
    move-result-object v4

    .line 4457
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 4458
    .line 4459
    .line 4460
    move-result-object v5

    .line 4461
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 4462
    .line 4463
    .line 4464
    move-result-object v7

    .line 4465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4466
    .line 4467
    .line 4468
    move-result-object v11

    .line 4469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4470
    .line 4471
    .line 4472
    move-result v0

    .line 4473
    if-eqz v0, :cond_a1

    .line 4474
    .line 4475
    move v12, v10

    .line 4476
    goto :goto_27

    .line 4477
    :cond_a1
    move v12, v6

    .line 4478
    :goto_27
    move-object v0, p0

    .line 4479
    move-object v1, v2

    .line 4480
    move-object v2, v3

    .line 4481
    move-object v3, v4

    .line 4482
    move-object v4, v5

    .line 4483
    move-object v5, v7

    .line 4484
    move-object v6, v11

    .line 4485
    move v7, v12

    .line 4486
    invoke-interface/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;Z)Z

    .line 4487
    .line 4488
    .line 4489
    move-result v0

    .line 4490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4491
    .line 4492
    .line 4493
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4494
    .line 4495
    .line 4496
    return v10

    .line 4497
    :pswitch_8d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4498
    .line 4499
    .line 4500
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4501
    .line 4502
    .line 4503
    move-result-object v0

    .line 4504
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4505
    .line 4506
    .line 4507
    move-result v1

    .line 4508
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    .line 4509
    .line 4510
    .line 4511
    move-result v0

    .line 4512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4513
    .line 4514
    .line 4515
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4516
    .line 4517
    .line 4518
    return v10

    .line 4519
    :pswitch_8e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4520
    .line 4521
    .line 4522
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4523
    .line 4524
    .line 4525
    move-result-object v0

    .line 4526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4527
    .line 4528
    .line 4529
    move-result v2

    .line 4530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4531
    .line 4532
    .line 4533
    move-result v1

    .line 4534
    if-eqz v1, :cond_a2

    .line 4535
    .line 4536
    move v6, v10

    .line 4537
    :cond_a2
    invoke-interface {p0, v0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    .line 4538
    .line 4539
    .line 4540
    move-result v0

    .line 4541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4542
    .line 4543
    .line 4544
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4545
    .line 4546
    .line 4547
    return v10

    .line 4548
    :pswitch_8f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4549
    .line 4550
    .line 4551
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4552
    .line 4553
    .line 4554
    move-result v0

    .line 4555
    if-eqz v0, :cond_a3

    .line 4556
    .line 4557
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4558
    .line 4559
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4560
    .line 4561
    .line 4562
    move-result-object v0

    .line 4563
    move-object v2, v0

    .line 4564
    check-cast v2, Landroid/content/ComponentName;

    .line 4565
    .line 4566
    :cond_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4567
    .line 4568
    .line 4569
    move-result-object v0

    .line 4570
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4571
    .line 4572
    .line 4573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4574
    .line 4575
    .line 4576
    return v10

    .line 4577
    :pswitch_90
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4578
    .line 4579
    .line 4580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4581
    .line 4582
    .line 4583
    move-result v0

    .line 4584
    if-eqz v0, :cond_a4

    .line 4585
    .line 4586
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4587
    .line 4588
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4589
    .line 4590
    .line 4591
    move-result-object v0

    .line 4592
    move-object v2, v0

    .line 4593
    check-cast v2, Landroid/content/ComponentName;

    .line 4594
    .line 4595
    :cond_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4596
    .line 4597
    .line 4598
    move-result-object v0

    .line 4599
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 4600
    .line 4601
    .line 4602
    move-result-object v1

    .line 4603
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4604
    .line 4605
    .line 4606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4607
    .line 4608
    .line 4609
    return v10

    .line 4610
    :pswitch_91
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4611
    .line 4612
    .line 4613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4614
    .line 4615
    .line 4616
    move-result v0

    .line 4617
    if-eqz v0, :cond_a5

    .line 4618
    .line 4619
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4620
    .line 4621
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4622
    .line 4623
    .line 4624
    move-result-object v0

    .line 4625
    move-object v2, v0

    .line 4626
    check-cast v2, Landroid/content/ComponentName;

    .line 4627
    .line 4628
    :cond_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4629
    .line 4630
    .line 4631
    move-result-object v0

    .line 4632
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 4633
    .line 4634
    .line 4635
    move-result-object v1

    .line 4636
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    .line 4637
    .line 4638
    .line 4639
    move-result v0

    .line 4640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4641
    .line 4642
    .line 4643
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4644
    .line 4645
    .line 4646
    return v10

    .line 4647
    :pswitch_92
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4648
    .line 4649
    .line 4650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4651
    .line 4652
    .line 4653
    move-result v0

    .line 4654
    if-eqz v0, :cond_a6

    .line 4655
    .line 4656
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4657
    .line 4658
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4659
    .line 4660
    .line 4661
    move-result-object v0

    .line 4662
    move-object v2, v0

    .line 4663
    check-cast v2, Landroid/content/ComponentName;

    .line 4664
    .line 4665
    :cond_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4666
    .line 4667
    .line 4668
    move-result-object v0

    .line 4669
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4670
    .line 4671
    .line 4672
    move-result-object v1

    .line 4673
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4674
    .line 4675
    .line 4676
    move-result v0

    .line 4677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4678
    .line 4679
    .line 4680
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4681
    .line 4682
    .line 4683
    return v10

    .line 4684
    :pswitch_93
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4685
    .line 4686
    .line 4687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4688
    .line 4689
    .line 4690
    move-result v0

    .line 4691
    if-eqz v0, :cond_a7

    .line 4692
    .line 4693
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4694
    .line 4695
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4696
    .line 4697
    .line 4698
    move-result-object v0

    .line 4699
    move-object v2, v0

    .line 4700
    check-cast v2, Landroid/content/ComponentName;

    .line 4701
    .line 4702
    :cond_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4703
    .line 4704
    .line 4705
    move-result-object v0

    .line 4706
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 4707
    .line 4708
    .line 4709
    move-result-object v3

    .line 4710
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4711
    .line 4712
    .line 4713
    move-result v1

    .line 4714
    if-eqz v1, :cond_a8

    .line 4715
    .line 4716
    move v6, v10

    .line 4717
    :cond_a8
    invoke-interface {p0, v2, v0, v3, v6}, Landroid/app/admin/IDevicePolicyManager;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 4718
    .line 4719
    .line 4720
    move-result-object v0

    .line 4721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4722
    .line 4723
    .line 4724
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4725
    .line 4726
    .line 4727
    return v10

    .line 4728
    :pswitch_94
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4729
    .line 4730
    .line 4731
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    .line 4732
    .line 4733
    .line 4734
    move-result-object v0

    .line 4735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4736
    .line 4737
    .line 4738
    if-eqz v0, :cond_a9

    .line 4739
    .line 4740
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4741
    .line 4742
    .line 4743
    invoke-static {v0, v9, v10}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 4744
    .line 4745
    .line 4746
    goto :goto_28

    .line 4747
    :cond_a9
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4748
    .line 4749
    .line 4750
    :goto_28
    return v10

    .line 4751
    :pswitch_95
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4752
    .line 4753
    .line 4754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4755
    .line 4756
    .line 4757
    move-result v0

    .line 4758
    if-eqz v0, :cond_aa

    .line 4759
    .line 4760
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4761
    .line 4762
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4763
    .line 4764
    .line 4765
    move-result-object v0

    .line 4766
    check-cast v0, Landroid/content/ComponentName;

    .line 4767
    .line 4768
    goto :goto_29

    .line 4769
    :cond_aa
    move-object v0, v2

    .line 4770
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4771
    .line 4772
    .line 4773
    move-result v3

    .line 4774
    if-eqz v3, :cond_ab

    .line 4775
    .line 4776
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 4777
    .line 4778
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4779
    .line 4780
    .line 4781
    move-result-object v1

    .line 4782
    move-object v2, v1

    .line 4783
    check-cast v2, Ljava/lang/CharSequence;

    .line 4784
    .line 4785
    :cond_ab
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 4786
    .line 4787
    .line 4788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4789
    .line 4790
    .line 4791
    return v10

    .line 4792
    :pswitch_96
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4793
    .line 4794
    .line 4795
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->hasUserSetupCompleted()Z

    .line 4796
    .line 4797
    .line 4798
    move-result v0

    .line 4799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4800
    .line 4801
    .line 4802
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4803
    .line 4804
    .line 4805
    return v10

    .line 4806
    :pswitch_97
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4807
    .line 4808
    .line 4809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4810
    .line 4811
    .line 4812
    move-result v0

    .line 4813
    if-eqz v0, :cond_ac

    .line 4814
    .line 4815
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4816
    .line 4817
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4818
    .line 4819
    .line 4820
    move-result-object v0

    .line 4821
    move-object v2, v0

    .line 4822
    check-cast v2, Landroid/content/ComponentName;

    .line 4823
    .line 4824
    :cond_ac
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 4825
    .line 4826
    .line 4827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4828
    .line 4829
    .line 4830
    return v10

    .line 4831
    :pswitch_98
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4832
    .line 4833
    .line 4834
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4835
    .line 4836
    .line 4837
    move-result v0

    .line 4838
    if-eqz v0, :cond_ad

    .line 4839
    .line 4840
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4841
    .line 4842
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4843
    .line 4844
    .line 4845
    move-result-object v0

    .line 4846
    move-object v2, v0

    .line 4847
    check-cast v2, Landroid/content/ComponentName;

    .line 4848
    .line 4849
    :cond_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4850
    .line 4851
    .line 4852
    move-result-object v0

    .line 4853
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4854
    .line 4855
    .line 4856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4857
    .line 4858
    .line 4859
    return v10

    .line 4860
    :pswitch_99
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4861
    .line 4862
    .line 4863
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4864
    .line 4865
    .line 4866
    move-result v0

    .line 4867
    if-eqz v0, :cond_ae

    .line 4868
    .line 4869
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4870
    .line 4871
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4872
    .line 4873
    .line 4874
    move-result-object v0

    .line 4875
    move-object v2, v0

    .line 4876
    check-cast v2, Landroid/content/ComponentName;

    .line 4877
    .line 4878
    :cond_ae
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 4879
    .line 4880
    .line 4881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4882
    .line 4883
    .line 4884
    return v10

    .line 4885
    :pswitch_9a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4886
    .line 4887
    .line 4888
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4889
    .line 4890
    .line 4891
    move-result v0

    .line 4892
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    .line 4893
    .line 4894
    .line 4895
    move-result-object v0

    .line 4896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4897
    .line 4898
    .line 4899
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4900
    .line 4901
    .line 4902
    return v10

    .line 4903
    :pswitch_9b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4904
    .line 4905
    .line 4906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4907
    .line 4908
    .line 4909
    move-result v0

    .line 4910
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    .line 4911
    .line 4912
    .line 4913
    move-result-object v0

    .line 4914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4915
    .line 4916
    .line 4917
    if-eqz v0, :cond_af

    .line 4918
    .line 4919
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4920
    .line 4921
    .line 4922
    invoke-virtual {v0, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4923
    .line 4924
    .line 4925
    goto :goto_2a

    .line 4926
    :cond_af
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4927
    .line 4928
    .line 4929
    :goto_2a
    return v10

    .line 4930
    :pswitch_9c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4931
    .line 4932
    .line 4933
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4934
    .line 4935
    .line 4936
    move-result v0

    .line 4937
    if-eqz v0, :cond_b0

    .line 4938
    .line 4939
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4940
    .line 4941
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4942
    .line 4943
    .line 4944
    move-result-object v0

    .line 4945
    move-object v2, v0

    .line 4946
    check-cast v2, Landroid/content/ComponentName;

    .line 4947
    .line 4948
    :cond_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4949
    .line 4950
    .line 4951
    move-result-object v0

    .line 4952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 4953
    .line 4954
    .line 4955
    move-result v1

    .line 4956
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 4957
    .line 4958
    .line 4959
    move-result v0

    .line 4960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4961
    .line 4962
    .line 4963
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4964
    .line 4965
    .line 4966
    return v10

    .line 4967
    :pswitch_9d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4968
    .line 4969
    .line 4970
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    .line 4971
    .line 4972
    .line 4973
    move-result v0

    .line 4974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4975
    .line 4976
    .line 4977
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4978
    .line 4979
    .line 4980
    return v10

    .line 4981
    :pswitch_9e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4982
    .line 4983
    .line 4984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4985
    .line 4986
    .line 4987
    move-result-object v0

    .line 4988
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceOwner(Ljava/lang/String;)V

    .line 4989
    .line 4990
    .line 4991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4992
    .line 4993
    .line 4994
    return v10

    .line 4995
    :pswitch_9f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4996
    .line 4997
    .line 4998
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    .line 4999
    .line 5000
    .line 5001
    move-result-object v0

    .line 5002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5003
    .line 5004
    .line 5005
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5006
    .line 5007
    .line 5008
    return v10

    .line 5009
    :pswitch_a0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5010
    .line 5011
    .line 5012
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    .line 5013
    .line 5014
    .line 5015
    move-result v0

    .line 5016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5017
    .line 5018
    .line 5019
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5020
    .line 5021
    .line 5022
    return v10

    .line 5023
    :pswitch_a1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5024
    .line 5025
    .line 5026
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5027
    .line 5028
    .line 5029
    move-result v0

    .line 5030
    if-eqz v0, :cond_b1

    .line 5031
    .line 5032
    move v0, v10

    .line 5033
    goto :goto_2b

    .line 5034
    :cond_b1
    move v0, v6

    .line 5035
    :goto_2b
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 5036
    .line 5037
    .line 5038
    move-result-object v0

    .line 5039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5040
    .line 5041
    .line 5042
    if-eqz v0, :cond_b2

    .line 5043
    .line 5044
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 5045
    .line 5046
    .line 5047
    invoke-virtual {v0, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5048
    .line 5049
    .line 5050
    goto :goto_2c

    .line 5051
    :cond_b2
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5052
    .line 5053
    .line 5054
    :goto_2c
    return v10

    .line 5055
    :pswitch_a2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5056
    .line 5057
    .line 5058
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5059
    .line 5060
    .line 5061
    move-result v0

    .line 5062
    if-eqz v0, :cond_b3

    .line 5063
    .line 5064
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5065
    .line 5066
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5067
    .line 5068
    .line 5069
    move-result-object v0

    .line 5070
    move-object v2, v0

    .line 5071
    check-cast v2, Landroid/content/ComponentName;

    .line 5072
    .line 5073
    :cond_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5074
    .line 5075
    .line 5076
    move-result-object v0

    .line 5077
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5078
    .line 5079
    .line 5080
    move-result v1

    .line 5081
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .line 5082
    .line 5083
    .line 5084
    move-result v0

    .line 5085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5086
    .line 5087
    .line 5088
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5089
    .line 5090
    .line 5091
    return v10

    .line 5092
    :pswitch_a3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5093
    .line 5094
    .line 5095
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5096
    .line 5097
    .line 5098
    move-result v0

    .line 5099
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardSecured(I)V

    .line 5100
    .line 5101
    .line 5102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5103
    .line 5104
    .line 5105
    return v10

    .line 5106
    :pswitch_a4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5107
    .line 5108
    .line 5109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5110
    .line 5111
    .line 5112
    move-result v0

    .line 5113
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardDismissed(I)V

    .line 5114
    .line 5115
    .line 5116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5117
    .line 5118
    .line 5119
    return v10

    .line 5120
    :pswitch_a5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5121
    .line 5122
    .line 5123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5124
    .line 5125
    .line 5126
    move-result v0

    .line 5127
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulFingerprintAttempt(I)V

    .line 5128
    .line 5129
    .line 5130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5131
    .line 5132
    .line 5133
    return v10

    .line 5134
    :pswitch_a6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5135
    .line 5136
    .line 5137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5138
    .line 5139
    .line 5140
    move-result v0

    .line 5141
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->reportFailedFingerprintAttempt(I)V

    .line 5142
    .line 5143
    .line 5144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5145
    .line 5146
    .line 5147
    return v10

    .line 5148
    :pswitch_a7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5149
    .line 5150
    .line 5151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5152
    .line 5153
    .line 5154
    move-result v0

    .line 5155
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 5156
    .line 5157
    .line 5158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5159
    .line 5160
    .line 5161
    return v10

    .line 5162
    :pswitch_a8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5163
    .line 5164
    .line 5165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5166
    .line 5167
    .line 5168
    move-result v0

    .line 5169
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 5170
    .line 5171
    .line 5172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5173
    .line 5174
    .line 5175
    return v10

    .line 5176
    :pswitch_a9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5177
    .line 5178
    .line 5179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5180
    .line 5181
    .line 5182
    move-result v0

    .line 5183
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->reportPasswordChanged(I)V

    .line 5184
    .line 5185
    .line 5186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5187
    .line 5188
    .line 5189
    return v10

    .line 5190
    :pswitch_aa
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5191
    .line 5192
    .line 5193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5194
    .line 5195
    .line 5196
    move-result v0

    .line 5197
    if-eqz v0, :cond_b4

    .line 5198
    .line 5199
    sget-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5200
    .line 5201
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5202
    .line 5203
    .line 5204
    move-result-object v0

    .line 5205
    move-object v2, v0

    .line 5206
    check-cast v2, Landroid/app/admin/PasswordMetrics;

    .line 5207
    .line 5208
    :cond_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5209
    .line 5210
    .line 5211
    move-result v0

    .line 5212
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    .line 5213
    .line 5214
    .line 5215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5216
    .line 5217
    .line 5218
    return v10

    .line 5219
    :pswitch_ab
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5220
    .line 5221
    .line 5222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5223
    .line 5224
    .line 5225
    move-result v0

    .line 5226
    if-eqz v0, :cond_b5

    .line 5227
    .line 5228
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5229
    .line 5230
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5231
    .line 5232
    .line 5233
    move-result-object v0

    .line 5234
    move-object v2, v0

    .line 5235
    check-cast v2, Landroid/content/ComponentName;

    .line 5236
    .line 5237
    :cond_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5238
    .line 5239
    .line 5240
    move-result v0

    .line 5241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5242
    .line 5243
    .line 5244
    move-result v1

    .line 5245
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    .line 5246
    .line 5247
    .line 5248
    move-result v0

    .line 5249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5250
    .line 5251
    .line 5252
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5253
    .line 5254
    .line 5255
    return v10

    .line 5256
    :pswitch_ac
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5257
    .line 5258
    .line 5259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5260
    .line 5261
    .line 5262
    move-result v0

    .line 5263
    if-eqz v0, :cond_b6

    .line 5264
    .line 5265
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5266
    .line 5267
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5268
    .line 5269
    .line 5270
    move-result-object v0

    .line 5271
    move-object v2, v0

    .line 5272
    check-cast v2, Landroid/content/ComponentName;

    .line 5273
    .line 5274
    :cond_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5275
    .line 5276
    .line 5277
    move-result v0

    .line 5278
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 5279
    .line 5280
    .line 5281
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5282
    .line 5283
    .line 5284
    return v10

    .line 5285
    :pswitch_ad
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5286
    .line 5287
    .line 5288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5289
    .line 5290
    .line 5291
    move-result v0

    .line 5292
    if-eqz v0, :cond_b7

    .line 5293
    .line 5294
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5295
    .line 5296
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5297
    .line 5298
    .line 5299
    move-result-object v0

    .line 5300
    move-object v2, v0

    .line 5301
    check-cast v2, Landroid/content/ComponentName;

    .line 5302
    .line 5303
    :cond_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5304
    .line 5305
    .line 5306
    move-result v0

    .line 5307
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 5308
    .line 5309
    .line 5310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5311
    .line 5312
    .line 5313
    return v10

    .line 5314
    :pswitch_ae
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5315
    .line 5316
    .line 5317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5318
    .line 5319
    .line 5320
    move-result v0

    .line 5321
    if-eqz v0, :cond_b8

    .line 5322
    .line 5323
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5324
    .line 5325
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5326
    .line 5327
    .line 5328
    move-result-object v0

    .line 5329
    check-cast v0, Landroid/content/ComponentName;

    .line 5330
    .line 5331
    goto :goto_2d

    .line 5332
    :cond_b8
    move-object v0, v2

    .line 5333
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5334
    .line 5335
    .line 5336
    move-result v3

    .line 5337
    if-eqz v3, :cond_b9

    .line 5338
    .line 5339
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5340
    .line 5341
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5342
    .line 5343
    .line 5344
    move-result-object v2

    .line 5345
    check-cast v2, Landroid/os/RemoteCallback;

    .line 5346
    .line 5347
    :cond_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5348
    .line 5349
    .line 5350
    move-result v1

    .line 5351
    invoke-interface {p0, v0, v2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 5352
    .line 5353
    .line 5354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5355
    .line 5356
    .line 5357
    return v10

    .line 5358
    :pswitch_af
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5359
    .line 5360
    .line 5361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5362
    .line 5363
    .line 5364
    move-result-object v0

    .line 5365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5366
    .line 5367
    .line 5368
    move-result v1

    .line 5369
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    .line 5370
    .line 5371
    .line 5372
    move-result v0

    .line 5373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5374
    .line 5375
    .line 5376
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5377
    .line 5378
    .line 5379
    return v10

    .line 5380
    :pswitch_b0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5381
    .line 5382
    .line 5383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5384
    .line 5385
    .line 5386
    move-result v0

    .line 5387
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    .line 5388
    .line 5389
    .line 5390
    move-result-object v0

    .line 5391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5392
    .line 5393
    .line 5394
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5395
    .line 5396
    .line 5397
    return v10

    .line 5398
    :pswitch_b1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5399
    .line 5400
    .line 5401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5402
    .line 5403
    .line 5404
    move-result v0

    .line 5405
    if-eqz v0, :cond_ba

    .line 5406
    .line 5407
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5408
    .line 5409
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5410
    .line 5411
    .line 5412
    move-result-object v0

    .line 5413
    move-object v2, v0

    .line 5414
    check-cast v2, Landroid/content/ComponentName;

    .line 5415
    .line 5416
    :cond_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5417
    .line 5418
    .line 5419
    move-result v0

    .line 5420
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    .line 5421
    .line 5422
    .line 5423
    move-result v0

    .line 5424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5425
    .line 5426
    .line 5427
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5428
    .line 5429
    .line 5430
    return v10

    .line 5431
    :pswitch_b2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5432
    .line 5433
    .line 5434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5435
    .line 5436
    .line 5437
    move-result v0

    .line 5438
    if-eqz v0, :cond_bb

    .line 5439
    .line 5440
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5441
    .line 5442
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5443
    .line 5444
    .line 5445
    move-result-object v0

    .line 5446
    move-object v2, v0

    .line 5447
    check-cast v2, Landroid/content/ComponentName;

    .line 5448
    .line 5449
    :cond_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5450
    .line 5451
    .line 5452
    move-result v0

    .line 5453
    if-eqz v0, :cond_bc

    .line 5454
    .line 5455
    move v6, v10

    .line 5456
    :cond_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5457
    .line 5458
    .line 5459
    move-result v0

    .line 5460
    invoke-interface {p0, v2, v6, v0}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 5461
    .line 5462
    .line 5463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5464
    .line 5465
    .line 5466
    return v10

    .line 5467
    :pswitch_b3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5468
    .line 5469
    .line 5470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5471
    .line 5472
    .line 5473
    move-result v0

    .line 5474
    if-eqz v0, :cond_bd

    .line 5475
    .line 5476
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5477
    .line 5478
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5479
    .line 5480
    .line 5481
    move-result-object v0

    .line 5482
    move-object v2, v0

    .line 5483
    check-cast v2, Landroid/content/ComponentName;

    .line 5484
    .line 5485
    :cond_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5486
    .line 5487
    .line 5488
    move-result v0

    .line 5489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5490
    .line 5491
    .line 5492
    move-result v1

    .line 5493
    if-eqz v1, :cond_be

    .line 5494
    .line 5495
    move v6, v10

    .line 5496
    :cond_be
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    .line 5497
    .line 5498
    .line 5499
    move-result v0

    .line 5500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5501
    .line 5502
    .line 5503
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5504
    .line 5505
    .line 5506
    return v10

    .line 5507
    :pswitch_b4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5508
    .line 5509
    .line 5510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5511
    .line 5512
    .line 5513
    move-result v0

    .line 5514
    if-eqz v0, :cond_bf

    .line 5515
    .line 5516
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5517
    .line 5518
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5519
    .line 5520
    .line 5521
    move-result-object v0

    .line 5522
    move-object v2, v0

    .line 5523
    check-cast v2, Landroid/content/ComponentName;

    .line 5524
    .line 5525
    :cond_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5526
    .line 5527
    .line 5528
    move-result v0

    .line 5529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5530
    .line 5531
    .line 5532
    move-result v1

    .line 5533
    if-eqz v1, :cond_c0

    .line 5534
    .line 5535
    move v6, v10

    .line 5536
    :cond_c0
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    .line 5537
    .line 5538
    .line 5539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5540
    .line 5541
    .line 5542
    return v10

    .line 5543
    :pswitch_b5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5544
    .line 5545
    .line 5546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5547
    .line 5548
    .line 5549
    move-result v0

    .line 5550
    if-eqz v0, :cond_c1

    .line 5551
    .line 5552
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5553
    .line 5554
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5555
    .line 5556
    .line 5557
    move-result-object v0

    .line 5558
    move-object v2, v0

    .line 5559
    check-cast v2, Landroid/content/ComponentName;

    .line 5560
    .line 5561
    :cond_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5562
    .line 5563
    .line 5564
    move-result v0

    .line 5565
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    .line 5566
    .line 5567
    .line 5568
    move-result v0

    .line 5569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5570
    .line 5571
    .line 5572
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5573
    .line 5574
    .line 5575
    return v10

    .line 5576
    :pswitch_b6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5577
    .line 5578
    .line 5579
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5580
    .line 5581
    .line 5582
    move-result v0

    .line 5583
    if-eqz v0, :cond_c2

    .line 5584
    .line 5585
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5586
    .line 5587
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5588
    .line 5589
    .line 5590
    move-result-object v0

    .line 5591
    move-object v2, v0

    .line 5592
    check-cast v2, Landroid/content/ComponentName;

    .line 5593
    .line 5594
    :cond_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5595
    .line 5596
    .line 5597
    move-result v0

    .line 5598
    if-eqz v0, :cond_c3

    .line 5599
    .line 5600
    move v6, v10

    .line 5601
    :cond_c3
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 5602
    .line 5603
    .line 5604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5605
    .line 5606
    .line 5607
    return v10

    .line 5608
    :pswitch_b7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5609
    .line 5610
    .line 5611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5612
    .line 5613
    .line 5614
    move-result v0

    .line 5615
    if-eqz v0, :cond_c4

    .line 5616
    .line 5617
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5618
    .line 5619
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5620
    .line 5621
    .line 5622
    move-result-object v0

    .line 5623
    move-object v2, v0

    .line 5624
    check-cast v2, Landroid/content/ComponentName;

    .line 5625
    .line 5626
    :cond_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5627
    .line 5628
    .line 5629
    move-result v0

    .line 5630
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    .line 5631
    .line 5632
    .line 5633
    move-result v0

    .line 5634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5635
    .line 5636
    .line 5637
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5638
    .line 5639
    .line 5640
    return v10

    .line 5641
    :pswitch_b8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5642
    .line 5643
    .line 5644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5645
    .line 5646
    .line 5647
    move-result v0

    .line 5648
    if-eqz v0, :cond_c5

    .line 5649
    .line 5650
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5651
    .line 5652
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5653
    .line 5654
    .line 5655
    move-result-object v0

    .line 5656
    move-object v2, v0

    .line 5657
    check-cast v2, Landroid/content/ComponentName;

    .line 5658
    .line 5659
    :cond_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5660
    .line 5661
    .line 5662
    move-result v0

    .line 5663
    if-eqz v0, :cond_c6

    .line 5664
    .line 5665
    move v6, v10

    .line 5666
    :cond_c6
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 5667
    .line 5668
    .line 5669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5670
    .line 5671
    .line 5672
    return v10

    .line 5673
    :pswitch_b9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5674
    .line 5675
    .line 5676
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5677
    .line 5678
    .line 5679
    move-result v0

    .line 5680
    if-eqz v0, :cond_c7

    .line 5681
    .line 5682
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5683
    .line 5684
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5685
    .line 5686
    .line 5687
    move-result-object v0

    .line 5688
    move-object v2, v0

    .line 5689
    check-cast v2, Landroid/content/ComponentName;

    .line 5690
    .line 5691
    :cond_c7
    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->requestBugreport(Landroid/content/ComponentName;)Z

    .line 5692
    .line 5693
    .line 5694
    move-result v0

    .line 5695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5696
    .line 5697
    .line 5698
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5699
    .line 5700
    .line 5701
    return v10

    .line 5702
    :pswitch_ba
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5703
    .line 5704
    .line 5705
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5706
    .line 5707
    .line 5708
    move-result-object v0

    .line 5709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5710
    .line 5711
    .line 5712
    move-result v1

    .line 5713
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    .line 5714
    .line 5715
    .line 5716
    move-result v0

    .line 5717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5718
    .line 5719
    .line 5720
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5721
    .line 5722
    .line 5723
    return v10

    .line 5724
    :pswitch_bb
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5725
    .line 5726
    .line 5727
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5728
    .line 5729
    .line 5730
    move-result v0

    .line 5731
    if-eqz v0, :cond_c8

    .line 5732
    .line 5733
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5734
    .line 5735
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5736
    .line 5737
    .line 5738
    move-result-object v0

    .line 5739
    move-object v2, v0

    .line 5740
    check-cast v2, Landroid/content/ComponentName;

    .line 5741
    .line 5742
    :cond_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5743
    .line 5744
    .line 5745
    move-result v0

    .line 5746
    invoke-interface {p0, v2, v0}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    .line 5747
    .line 5748
    .line 5749
    move-result v0

    .line 5750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5751
    .line 5752
    .line 5753
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5754
    .line 5755
    .line 5756
    return v10

    .line 5757
    :pswitch_bc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5758
    .line 5759
    .line 5760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5761
    .line 5762
    .line 5763
    move-result v0

    .line 5764
    if-eqz v0, :cond_c9

    .line 5765
    .line 5766
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5767
    .line 5768
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5769
    .line 5770
    .line 5771
    move-result-object v0

    .line 5772
    move-object v2, v0

    .line 5773
    check-cast v2, Landroid/content/ComponentName;

    .line 5774
    .line 5775
    :cond_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5776
    .line 5777
    .line 5778
    move-result v0

    .line 5779
    if-eqz v0, :cond_ca

    .line 5780
    .line 5781
    move v6, v10

    .line 5782
    :cond_ca
    invoke-interface {p0, v2, v6}, Landroid/app/admin/IDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 5783
    .line 5784
    .line 5785
    move-result v0

    .line 5786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5787
    .line 5788
    .line 5789
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5790
    .line 5791
    .line 5792
    return v10

    .line 5793
    :pswitch_bd
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5794
    .line 5795
    .line 5796
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5797
    .line 5798
    .line 5799
    move-result v0

    .line 5800
    if-eqz v0, :cond_cb

    .line 5801
    .line 5802
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5803
    .line 5804
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5805
    .line 5806
    .line 5807
    move-result-object v0

    .line 5808
    check-cast v0, Landroid/content/ComponentName;

    .line 5809
    .line 5810
    goto :goto_2e

    .line 5811
    :cond_cb
    move-object v0, v2

    .line 5812
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5813
    .line 5814
    .line 5815
    move-result v3

    .line 5816
    if-eqz v3, :cond_cc

    .line 5817
    .line 5818
    sget-object v2, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5819
    .line 5820
    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5821
    .line 5822
    .line 5823
    move-result-object v1

    .line 5824
    move-object v2, v1

    .line 5825
    check-cast v2, Landroid/net/ProxyInfo;

    .line 5826
    .line 5827
    :cond_cc
    invoke-interface {p0, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 5828
    .line 5829
    .line 5830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5831
    .line 5832
    .line 5833
    return v10

    .line 5834
    :pswitch_be
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5835
    .line 5836
    .line 5837
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5838
    .line 5839
    .line 5840
    move-result v0

    .line 5841
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    .line 5842
    .line 5843
    .line 5844
    move-result-object v0

    .line 5845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5846
    .line 5847
    .line 5848
    if-eqz v0, :cond_cd

    .line 5849
    .line 5850
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 5851
    .line 5852
    .line 5853
    invoke-virtual {v0, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5854
    .line 5855
    .line 5856
    goto :goto_2f

    .line 5857
    :cond_cd
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5858
    .line 5859
    .line 5860
    :goto_2f
    return v10

    .line 5861
    :pswitch_bf
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5862
    .line 5863
    .line 5864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5865
    .line 5866
    .line 5867
    move-result v0

    .line 5868
    if-eqz v0, :cond_ce

    .line 5869
    .line 5870
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5871
    .line 5872
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5873
    .line 5874
    .line 5875
    move-result-object v0

    .line 5876
    move-object v2, v0

    .line 5877
    check-cast v2, Landroid/content/ComponentName;

    .line 5878
    .line 5879
    :cond_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5880
    .line 5881
    .line 5882
    move-result-object v0

    .line 5883
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5884
    .line 5885
    .line 5886
    move-result-object v1

    .line 5887
    invoke-interface {p0, v2, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 5888
    .line 5889
    .line 5890
    move-result-object v0

    .line 5891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5892
    .line 5893
    .line 5894
    if-eqz v0, :cond_cf

    .line 5895
    .line 5896
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 5897
    .line 5898
    .line 5899
    invoke-virtual {v0, v9, v10}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5900
    .line 5901
    .line 5902
    goto :goto_30

    .line 5903
    :cond_cf
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5904
    .line 5905
    .line 5906
    :goto_30
    return v10

    .line 5907
    :pswitch_c0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5908
    .line 5909
    .line 5910
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5911
    .line 5912
    .line 5913
    move-result v0

    .line 5914
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->wipeData(I)V

    .line 5915
    .line 5916
    .line 5917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5918
    .line 5919
    .line 5920
    return v10

    .line 5921
    :pswitch_c1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5922
    .line 5923
    .line 5924
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5925
    .line 5926
    .line 5927
    move-result v0

    .line 5928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5929
    .line 5930
    .line 5931
    move-result v1

    .line 5932
    if-eqz v1, :cond_d0

    .line 5933
    .line 5934
    move v6, v10

    .line 5935
    :cond_d0
    invoke-interface {p0, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->lockNow(IZ)V

    .line 5936
    .line 5937
    .line 5938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5939
    .line 5940
    .line 5941
    return v10

    .line 5942
    :pswitch_c2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5943
    .line 5944
    .line 5945
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5946
    .line 5947
    .line 5948
    move-result v0

    .line 5949
    if-eqz v0, :cond_d1

    .line 5950
    .line 5951
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5952
    .line 5953
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5954
    .line 5955
    .line 5956
    move-result-object v0

    .line 5957
    move-object v2, v0

    .line 5958
    check-cast v2, Landroid/content/ComponentName;

    .line 5959
    .line 5960
    :cond_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5961
    .line 5962
    .line 5963
    move-result v0

    .line 5964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5965
    .line 5966
    .line 5967
    move-result v1

    .line 5968
    if-eqz v1, :cond_d2

    .line 5969
    .line 5970
    move v6, v10

    .line 5971
    :cond_d2
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    .line 5972
    .line 5973
    .line 5974
    move-result-wide v0

    .line 5975
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5976
    .line 5977
    .line 5978
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5979
    .line 5980
    .line 5981
    return v10

    .line 5982
    :pswitch_c3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 5983
    .line 5984
    .line 5985
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 5986
    .line 5987
    .line 5988
    move-result v0

    .line 5989
    if-eqz v0, :cond_d3

    .line 5990
    .line 5991
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5992
    .line 5993
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 5994
    .line 5995
    .line 5996
    move-result-object v0

    .line 5997
    move-object v2, v0

    .line 5998
    check-cast v2, Landroid/content/ComponentName;

    .line 5999
    .line 6000
    :cond_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 6001
    .line 6002
    .line 6003
    move-result-wide v3

    .line 6004
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6005
    .line 6006
    .line 6007
    move-result v0

    .line 6008
    if-eqz v0, :cond_d4

    .line 6009
    .line 6010
    move v6, v10

    .line 6011
    :cond_d4
    invoke-interface {p0, v2, v3, v4, v6}, Landroid/app/admin/IDevicePolicyManager;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V

    .line 6012
    .line 6013
    .line 6014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6015
    .line 6016
    .line 6017
    return v10

    .line 6018
    :pswitch_c4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6019
    .line 6020
    .line 6021
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6022
    .line 6023
    .line 6024
    move-result v0

    .line 6025
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    .line 6026
    .line 6027
    .line 6028
    move-result-wide v0

    .line 6029
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6030
    .line 6031
    .line 6032
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6033
    .line 6034
    .line 6035
    return v10

    .line 6036
    :pswitch_c5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6037
    .line 6038
    .line 6039
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6040
    .line 6041
    .line 6042
    move-result v0

    .line 6043
    if-eqz v0, :cond_d5

    .line 6044
    .line 6045
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6046
    .line 6047
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6048
    .line 6049
    .line 6050
    move-result-object v0

    .line 6051
    move-object v2, v0

    .line 6052
    check-cast v2, Landroid/content/ComponentName;

    .line 6053
    .line 6054
    :cond_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6055
    .line 6056
    .line 6057
    move-result v0

    .line 6058
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6059
    .line 6060
    .line 6061
    move-result v1

    .line 6062
    if-eqz v1, :cond_d6

    .line 6063
    .line 6064
    move v6, v10

    .line 6065
    :cond_d6
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    .line 6066
    .line 6067
    .line 6068
    move-result-wide v0

    .line 6069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6070
    .line 6071
    .line 6072
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6073
    .line 6074
    .line 6075
    return v10

    .line 6076
    :pswitch_c6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6077
    .line 6078
    .line 6079
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6080
    .line 6081
    .line 6082
    move-result v0

    .line 6083
    if-eqz v0, :cond_d7

    .line 6084
    .line 6085
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6086
    .line 6087
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6088
    .line 6089
    .line 6090
    move-result-object v0

    .line 6091
    move-object v2, v0

    .line 6092
    check-cast v2, Landroid/content/ComponentName;

    .line 6093
    .line 6094
    :cond_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 6095
    .line 6096
    .line 6097
    move-result-wide v3

    .line 6098
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6099
    .line 6100
    .line 6101
    move-result v0

    .line 6102
    if-eqz v0, :cond_d8

    .line 6103
    .line 6104
    move v6, v10

    .line 6105
    :cond_d8
    invoke-interface {p0, v2, v3, v4, v6}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    .line 6106
    .line 6107
    .line 6108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6109
    .line 6110
    .line 6111
    return v10

    .line 6112
    :pswitch_c7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6113
    .line 6114
    .line 6115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6116
    .line 6117
    .line 6118
    move-result-object v0

    .line 6119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6120
    .line 6121
    .line 6122
    move-result v1

    .line 6123
    invoke-interface {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    .line 6124
    .line 6125
    .line 6126
    move-result v0

    .line 6127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6128
    .line 6129
    .line 6130
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6131
    .line 6132
    .line 6133
    return v10

    .line 6134
    :pswitch_c8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6135
    .line 6136
    .line 6137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6138
    .line 6139
    .line 6140
    move-result v0

    .line 6141
    if-eqz v0, :cond_d9

    .line 6142
    .line 6143
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6144
    .line 6145
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6146
    .line 6147
    .line 6148
    move-result-object v0

    .line 6149
    move-object v2, v0

    .line 6150
    check-cast v2, Landroid/content/ComponentName;

    .line 6151
    .line 6152
    :cond_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6153
    .line 6154
    .line 6155
    move-result v0

    .line 6156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6157
    .line 6158
    .line 6159
    move-result v1

    .line 6160
    if-eqz v1, :cond_da

    .line 6161
    .line 6162
    move v6, v10

    .line 6163
    :cond_da
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    .line 6164
    .line 6165
    .line 6166
    move-result v0

    .line 6167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6168
    .line 6169
    .line 6170
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6171
    .line 6172
    .line 6173
    return v10

    .line 6174
    :pswitch_c9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6175
    .line 6176
    .line 6177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6178
    .line 6179
    .line 6180
    move-result v0

    .line 6181
    if-eqz v0, :cond_db

    .line 6182
    .line 6183
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6184
    .line 6185
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6186
    .line 6187
    .line 6188
    move-result-object v0

    .line 6189
    move-object v2, v0

    .line 6190
    check-cast v2, Landroid/content/ComponentName;

    .line 6191
    .line 6192
    :cond_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6193
    .line 6194
    .line 6195
    move-result v0

    .line 6196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6197
    .line 6198
    .line 6199
    move-result v1

    .line 6200
    if-eqz v1, :cond_dc

    .line 6201
    .line 6202
    move v6, v10

    .line 6203
    :cond_dc
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    .line 6204
    .line 6205
    .line 6206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6207
    .line 6208
    .line 6209
    return v10

    .line 6210
    :pswitch_ca
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6211
    .line 6212
    .line 6213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6214
    .line 6215
    .line 6216
    move-result v0

    .line 6217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6218
    .line 6219
    .line 6220
    move-result v1

    .line 6221
    if-eqz v1, :cond_dd

    .line 6222
    .line 6223
    move v6, v10

    .line 6224
    :cond_dd
    invoke-interface {p0, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    .line 6225
    .line 6226
    .line 6227
    move-result v0

    .line 6228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6229
    .line 6230
    .line 6231
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6232
    .line 6233
    .line 6234
    return v10

    .line 6235
    :pswitch_cb
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6236
    .line 6237
    .line 6238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6239
    .line 6240
    .line 6241
    move-result v0

    .line 6242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6243
    .line 6244
    .line 6245
    move-result v1

    .line 6246
    if-eqz v1, :cond_de

    .line 6247
    .line 6248
    move v6, v10

    .line 6249
    :cond_de
    invoke-interface {p0, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(IZ)I

    .line 6250
    .line 6251
    .line 6252
    move-result v0

    .line 6253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6254
    .line 6255
    .line 6256
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6257
    .line 6258
    .line 6259
    return v10

    .line 6260
    :pswitch_cc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6261
    .line 6262
    .line 6263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6264
    .line 6265
    .line 6266
    move-result v0

    .line 6267
    invoke-interface {p0, v0}, Landroid/app/admin/IDevicePolicyManager;->isProfileActivePasswordSufficientForParent(I)Z

    .line 6268
    .line 6269
    .line 6270
    move-result v0

    .line 6271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6272
    .line 6273
    .line 6274
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6275
    .line 6276
    .line 6277
    return v10

    .line 6278
    :pswitch_cd
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6279
    .line 6280
    .line 6281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6282
    .line 6283
    .line 6284
    move-result v0

    .line 6285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6286
    .line 6287
    .line 6288
    move-result v1

    .line 6289
    if-eqz v1, :cond_df

    .line 6290
    .line 6291
    move v6, v10

    .line 6292
    :cond_df
    invoke-interface {p0, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(IZ)Z

    .line 6293
    .line 6294
    .line 6295
    move-result v0

    .line 6296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6297
    .line 6298
    .line 6299
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6300
    .line 6301
    .line 6302
    return v10

    .line 6303
    :pswitch_ce
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6304
    .line 6305
    .line 6306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6307
    .line 6308
    .line 6309
    move-result v0

    .line 6310
    if-eqz v0, :cond_e0

    .line 6311
    .line 6312
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6313
    .line 6314
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6315
    .line 6316
    .line 6317
    move-result-object v0

    .line 6318
    move-object v2, v0

    .line 6319
    check-cast v2, Landroid/content/ComponentName;

    .line 6320
    .line 6321
    :cond_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6322
    .line 6323
    .line 6324
    move-result v0

    .line 6325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6326
    .line 6327
    .line 6328
    move-result v1

    .line 6329
    if-eqz v1, :cond_e1

    .line 6330
    .line 6331
    move v6, v10

    .line 6332
    :cond_e1
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    .line 6333
    .line 6334
    .line 6335
    move-result-wide v0

    .line 6336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6337
    .line 6338
    .line 6339
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6340
    .line 6341
    .line 6342
    return v10

    .line 6343
    :pswitch_cf
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6344
    .line 6345
    .line 6346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6347
    .line 6348
    .line 6349
    move-result v0

    .line 6350
    if-eqz v0, :cond_e2

    .line 6351
    .line 6352
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6353
    .line 6354
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6355
    .line 6356
    .line 6357
    move-result-object v0

    .line 6358
    move-object v2, v0

    .line 6359
    check-cast v2, Landroid/content/ComponentName;

    .line 6360
    .line 6361
    :cond_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6362
    .line 6363
    .line 6364
    move-result v0

    .line 6365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6366
    .line 6367
    .line 6368
    move-result v1

    .line 6369
    if-eqz v1, :cond_e3

    .line 6370
    .line 6371
    move v6, v10

    .line 6372
    :cond_e3
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    .line 6373
    .line 6374
    .line 6375
    move-result-wide v0

    .line 6376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6377
    .line 6378
    .line 6379
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6380
    .line 6381
    .line 6382
    return v10

    .line 6383
    :pswitch_d0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6384
    .line 6385
    .line 6386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6387
    .line 6388
    .line 6389
    move-result v0

    .line 6390
    if-eqz v0, :cond_e4

    .line 6391
    .line 6392
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6393
    .line 6394
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6395
    .line 6396
    .line 6397
    move-result-object v0

    .line 6398
    move-object v2, v0

    .line 6399
    check-cast v2, Landroid/content/ComponentName;

    .line 6400
    .line 6401
    :cond_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 6402
    .line 6403
    .line 6404
    move-result-wide v3

    .line 6405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6406
    .line 6407
    .line 6408
    move-result v0

    .line 6409
    if-eqz v0, :cond_e5

    .line 6410
    .line 6411
    move v6, v10

    .line 6412
    :cond_e5
    invoke-interface {p0, v2, v3, v4, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    .line 6413
    .line 6414
    .line 6415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6416
    .line 6417
    .line 6418
    return v10

    .line 6419
    :pswitch_d1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6420
    .line 6421
    .line 6422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6423
    .line 6424
    .line 6425
    move-result v0

    .line 6426
    if-eqz v0, :cond_e6

    .line 6427
    .line 6428
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6429
    .line 6430
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6431
    .line 6432
    .line 6433
    move-result-object v0

    .line 6434
    move-object v2, v0

    .line 6435
    check-cast v2, Landroid/content/ComponentName;

    .line 6436
    .line 6437
    :cond_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6438
    .line 6439
    .line 6440
    move-result v0

    .line 6441
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6442
    .line 6443
    .line 6444
    move-result v1

    .line 6445
    if-eqz v1, :cond_e7

    .line 6446
    .line 6447
    move v6, v10

    .line 6448
    :cond_e7
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    .line 6449
    .line 6450
    .line 6451
    move-result v0

    .line 6452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6453
    .line 6454
    .line 6455
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6456
    .line 6457
    .line 6458
    return v10

    .line 6459
    :pswitch_d2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6460
    .line 6461
    .line 6462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6463
    .line 6464
    .line 6465
    move-result v0

    .line 6466
    if-eqz v0, :cond_e8

    .line 6467
    .line 6468
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6469
    .line 6470
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6471
    .line 6472
    .line 6473
    move-result-object v0

    .line 6474
    move-object v2, v0

    .line 6475
    check-cast v2, Landroid/content/ComponentName;

    .line 6476
    .line 6477
    :cond_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6478
    .line 6479
    .line 6480
    move-result v0

    .line 6481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6482
    .line 6483
    .line 6484
    move-result v1

    .line 6485
    if-eqz v1, :cond_e9

    .line 6486
    .line 6487
    move v6, v10

    .line 6488
    :cond_e9
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 6489
    .line 6490
    .line 6491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6492
    .line 6493
    .line 6494
    return v10

    .line 6495
    :pswitch_d3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6496
    .line 6497
    .line 6498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6499
    .line 6500
    .line 6501
    move-result v0

    .line 6502
    if-eqz v0, :cond_ea

    .line 6503
    .line 6504
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6505
    .line 6506
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6507
    .line 6508
    .line 6509
    move-result-object v0

    .line 6510
    move-object v2, v0

    .line 6511
    check-cast v2, Landroid/content/ComponentName;

    .line 6512
    .line 6513
    :cond_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6514
    .line 6515
    .line 6516
    move-result v0

    .line 6517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6518
    .line 6519
    .line 6520
    move-result v1

    .line 6521
    if-eqz v1, :cond_eb

    .line 6522
    .line 6523
    move v6, v10

    .line 6524
    :cond_eb
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    .line 6525
    .line 6526
    .line 6527
    move-result v0

    .line 6528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6529
    .line 6530
    .line 6531
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6532
    .line 6533
    .line 6534
    return v10

    .line 6535
    :pswitch_d4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6536
    .line 6537
    .line 6538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6539
    .line 6540
    .line 6541
    move-result v0

    .line 6542
    if-eqz v0, :cond_ec

    .line 6543
    .line 6544
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6545
    .line 6546
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6547
    .line 6548
    .line 6549
    move-result-object v0

    .line 6550
    move-object v2, v0

    .line 6551
    check-cast v2, Landroid/content/ComponentName;

    .line 6552
    .line 6553
    :cond_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6554
    .line 6555
    .line 6556
    move-result v0

    .line 6557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6558
    .line 6559
    .line 6560
    move-result v1

    .line 6561
    if-eqz v1, :cond_ed

    .line 6562
    .line 6563
    move v6, v10

    .line 6564
    :cond_ed
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 6565
    .line 6566
    .line 6567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6568
    .line 6569
    .line 6570
    return v10

    .line 6571
    :pswitch_d5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6572
    .line 6573
    .line 6574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6575
    .line 6576
    .line 6577
    move-result v0

    .line 6578
    if-eqz v0, :cond_ee

    .line 6579
    .line 6580
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6581
    .line 6582
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6583
    .line 6584
    .line 6585
    move-result-object v0

    .line 6586
    move-object v2, v0

    .line 6587
    check-cast v2, Landroid/content/ComponentName;

    .line 6588
    .line 6589
    :cond_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6590
    .line 6591
    .line 6592
    move-result v0

    .line 6593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6594
    .line 6595
    .line 6596
    move-result v1

    .line 6597
    if-eqz v1, :cond_ef

    .line 6598
    .line 6599
    move v6, v10

    .line 6600
    :cond_ef
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    .line 6601
    .line 6602
    .line 6603
    move-result v0

    .line 6604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6605
    .line 6606
    .line 6607
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6608
    .line 6609
    .line 6610
    return v10

    .line 6611
    :pswitch_d6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6612
    .line 6613
    .line 6614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6615
    .line 6616
    .line 6617
    move-result v0

    .line 6618
    if-eqz v0, :cond_f0

    .line 6619
    .line 6620
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6621
    .line 6622
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6623
    .line 6624
    .line 6625
    move-result-object v0

    .line 6626
    move-object v2, v0

    .line 6627
    check-cast v2, Landroid/content/ComponentName;

    .line 6628
    .line 6629
    :cond_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6630
    .line 6631
    .line 6632
    move-result v0

    .line 6633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6634
    .line 6635
    .line 6636
    move-result v1

    .line 6637
    if-eqz v1, :cond_f1

    .line 6638
    .line 6639
    move v6, v10

    .line 6640
    :cond_f1
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 6641
    .line 6642
    .line 6643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6644
    .line 6645
    .line 6646
    return v10

    .line 6647
    :pswitch_d7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6648
    .line 6649
    .line 6650
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6651
    .line 6652
    .line 6653
    move-result v0

    .line 6654
    if-eqz v0, :cond_f2

    .line 6655
    .line 6656
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6657
    .line 6658
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6659
    .line 6660
    .line 6661
    move-result-object v0

    .line 6662
    move-object v2, v0

    .line 6663
    check-cast v2, Landroid/content/ComponentName;

    .line 6664
    .line 6665
    :cond_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6666
    .line 6667
    .line 6668
    move-result v0

    .line 6669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6670
    .line 6671
    .line 6672
    move-result v1

    .line 6673
    if-eqz v1, :cond_f3

    .line 6674
    .line 6675
    move v6, v10

    .line 6676
    :cond_f3
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    .line 6677
    .line 6678
    .line 6679
    move-result v0

    .line 6680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6681
    .line 6682
    .line 6683
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6684
    .line 6685
    .line 6686
    return v10

    .line 6687
    :pswitch_d8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6688
    .line 6689
    .line 6690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6691
    .line 6692
    .line 6693
    move-result v0

    .line 6694
    if-eqz v0, :cond_f4

    .line 6695
    .line 6696
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6697
    .line 6698
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6699
    .line 6700
    .line 6701
    move-result-object v0

    .line 6702
    move-object v2, v0

    .line 6703
    check-cast v2, Landroid/content/ComponentName;

    .line 6704
    .line 6705
    :cond_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6706
    .line 6707
    .line 6708
    move-result v0

    .line 6709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6710
    .line 6711
    .line 6712
    move-result v1

    .line 6713
    if-eqz v1, :cond_f5

    .line 6714
    .line 6715
    move v6, v10

    .line 6716
    :cond_f5
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 6717
    .line 6718
    .line 6719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6720
    .line 6721
    .line 6722
    return v10

    .line 6723
    :pswitch_d9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6724
    .line 6725
    .line 6726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6727
    .line 6728
    .line 6729
    move-result v0

    .line 6730
    if-eqz v0, :cond_f6

    .line 6731
    .line 6732
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6733
    .line 6734
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6735
    .line 6736
    .line 6737
    move-result-object v0

    .line 6738
    move-object v2, v0

    .line 6739
    check-cast v2, Landroid/content/ComponentName;

    .line 6740
    .line 6741
    :cond_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6742
    .line 6743
    .line 6744
    move-result v0

    .line 6745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6746
    .line 6747
    .line 6748
    move-result v1

    .line 6749
    if-eqz v1, :cond_f7

    .line 6750
    .line 6751
    move v6, v10

    .line 6752
    :cond_f7
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    .line 6753
    .line 6754
    .line 6755
    move-result v0

    .line 6756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6757
    .line 6758
    .line 6759
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6760
    .line 6761
    .line 6762
    return v10

    .line 6763
    :pswitch_da
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6764
    .line 6765
    .line 6766
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6767
    .line 6768
    .line 6769
    move-result v0

    .line 6770
    if-eqz v0, :cond_f8

    .line 6771
    .line 6772
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6773
    .line 6774
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6775
    .line 6776
    .line 6777
    move-result-object v0

    .line 6778
    move-object v2, v0

    .line 6779
    check-cast v2, Landroid/content/ComponentName;

    .line 6780
    .line 6781
    :cond_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6782
    .line 6783
    .line 6784
    move-result v0

    .line 6785
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6786
    .line 6787
    .line 6788
    move-result v1

    .line 6789
    if-eqz v1, :cond_f9

    .line 6790
    .line 6791
    move v6, v10

    .line 6792
    :cond_f9
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 6793
    .line 6794
    .line 6795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6796
    .line 6797
    .line 6798
    return v10

    .line 6799
    :pswitch_db
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6800
    .line 6801
    .line 6802
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6803
    .line 6804
    .line 6805
    move-result v0

    .line 6806
    if-eqz v0, :cond_fa

    .line 6807
    .line 6808
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6809
    .line 6810
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6811
    .line 6812
    .line 6813
    move-result-object v0

    .line 6814
    move-object v2, v0

    .line 6815
    check-cast v2, Landroid/content/ComponentName;

    .line 6816
    .line 6817
    :cond_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6818
    .line 6819
    .line 6820
    move-result v0

    .line 6821
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6822
    .line 6823
    .line 6824
    move-result v1

    .line 6825
    if-eqz v1, :cond_fb

    .line 6826
    .line 6827
    move v6, v10

    .line 6828
    :cond_fb
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    .line 6829
    .line 6830
    .line 6831
    move-result v0

    .line 6832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6833
    .line 6834
    .line 6835
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6836
    .line 6837
    .line 6838
    return v10

    .line 6839
    :pswitch_dc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6840
    .line 6841
    .line 6842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6843
    .line 6844
    .line 6845
    move-result v0

    .line 6846
    if-eqz v0, :cond_fc

    .line 6847
    .line 6848
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6849
    .line 6850
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6851
    .line 6852
    .line 6853
    move-result-object v0

    .line 6854
    move-object v2, v0

    .line 6855
    check-cast v2, Landroid/content/ComponentName;

    .line 6856
    .line 6857
    :cond_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6858
    .line 6859
    .line 6860
    move-result v0

    .line 6861
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6862
    .line 6863
    .line 6864
    move-result v1

    .line 6865
    if-eqz v1, :cond_fd

    .line 6866
    .line 6867
    move v6, v10

    .line 6868
    :cond_fd
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 6869
    .line 6870
    .line 6871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6872
    .line 6873
    .line 6874
    return v10

    .line 6875
    :pswitch_dd
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6876
    .line 6877
    .line 6878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6879
    .line 6880
    .line 6881
    move-result v0

    .line 6882
    if-eqz v0, :cond_fe

    .line 6883
    .line 6884
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6885
    .line 6886
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6887
    .line 6888
    .line 6889
    move-result-object v0

    .line 6890
    move-object v2, v0

    .line 6891
    check-cast v2, Landroid/content/ComponentName;

    .line 6892
    .line 6893
    :cond_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6894
    .line 6895
    .line 6896
    move-result v0

    .line 6897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6898
    .line 6899
    .line 6900
    move-result v1

    .line 6901
    if-eqz v1, :cond_ff

    .line 6902
    .line 6903
    move v6, v10

    .line 6904
    :cond_ff
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    .line 6905
    .line 6906
    .line 6907
    move-result v0

    .line 6908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6909
    .line 6910
    .line 6911
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6912
    .line 6913
    .line 6914
    return v10

    .line 6915
    :pswitch_de
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6916
    .line 6917
    .line 6918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6919
    .line 6920
    .line 6921
    move-result v0

    .line 6922
    if-eqz v0, :cond_100

    .line 6923
    .line 6924
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6925
    .line 6926
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6927
    .line 6928
    .line 6929
    move-result-object v0

    .line 6930
    move-object v2, v0

    .line 6931
    check-cast v2, Landroid/content/ComponentName;

    .line 6932
    .line 6933
    :cond_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6934
    .line 6935
    .line 6936
    move-result v0

    .line 6937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6938
    .line 6939
    .line 6940
    move-result v1

    .line 6941
    if-eqz v1, :cond_101

    .line 6942
    .line 6943
    move v6, v10

    .line 6944
    :cond_101
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 6945
    .line 6946
    .line 6947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6948
    .line 6949
    .line 6950
    return v10

    .line 6951
    :pswitch_df
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6952
    .line 6953
    .line 6954
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6955
    .line 6956
    .line 6957
    move-result v0

    .line 6958
    if-eqz v0, :cond_102

    .line 6959
    .line 6960
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6961
    .line 6962
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 6963
    .line 6964
    .line 6965
    move-result-object v0

    .line 6966
    move-object v2, v0

    .line 6967
    check-cast v2, Landroid/content/ComponentName;

    .line 6968
    .line 6969
    :cond_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6970
    .line 6971
    .line 6972
    move-result v0

    .line 6973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6974
    .line 6975
    .line 6976
    move-result v1

    .line 6977
    if-eqz v1, :cond_103

    .line 6978
    .line 6979
    move v6, v10

    .line 6980
    :cond_103
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    .line 6981
    .line 6982
    .line 6983
    move-result v0

    .line 6984
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6985
    .line 6986
    .line 6987
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6988
    .line 6989
    .line 6990
    return v10

    .line 6991
    :pswitch_e0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 6992
    .line 6993
    .line 6994
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6995
    .line 6996
    .line 6997
    move-result v0

    .line 6998
    if-eqz v0, :cond_104

    .line 6999
    .line 7000
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7001
    .line 7002
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7003
    .line 7004
    .line 7005
    move-result-object v0

    .line 7006
    move-object v2, v0

    .line 7007
    check-cast v2, Landroid/content/ComponentName;

    .line 7008
    .line 7009
    :cond_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7010
    .line 7011
    .line 7012
    move-result v0

    .line 7013
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7014
    .line 7015
    .line 7016
    move-result v1

    .line 7017
    if-eqz v1, :cond_105

    .line 7018
    .line 7019
    move v6, v10

    .line 7020
    :cond_105
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 7021
    .line 7022
    .line 7023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7024
    .line 7025
    .line 7026
    return v10

    .line 7027
    :pswitch_e1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7028
    .line 7029
    .line 7030
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7031
    .line 7032
    .line 7033
    move-result v0

    .line 7034
    if-eqz v0, :cond_106

    .line 7035
    .line 7036
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7037
    .line 7038
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7039
    .line 7040
    .line 7041
    move-result-object v0

    .line 7042
    move-object v2, v0

    .line 7043
    check-cast v2, Landroid/content/ComponentName;

    .line 7044
    .line 7045
    :cond_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7046
    .line 7047
    .line 7048
    move-result v0

    .line 7049
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7050
    .line 7051
    .line 7052
    move-result v1

    .line 7053
    if-eqz v1, :cond_107

    .line 7054
    .line 7055
    move v6, v10

    .line 7056
    :cond_107
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    .line 7057
    .line 7058
    .line 7059
    move-result v0

    .line 7060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7061
    .line 7062
    .line 7063
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7064
    .line 7065
    .line 7066
    return v10

    .line 7067
    :pswitch_e2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7068
    .line 7069
    .line 7070
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7071
    .line 7072
    .line 7073
    move-result v0

    .line 7074
    if-eqz v0, :cond_108

    .line 7075
    .line 7076
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7077
    .line 7078
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 7079
    .line 7080
    .line 7081
    move-result-object v0

    .line 7082
    move-object v2, v0

    .line 7083
    check-cast v2, Landroid/content/ComponentName;

    .line 7084
    .line 7085
    :cond_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7086
    .line 7087
    .line 7088
    move-result v0

    .line 7089
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 7090
    .line 7091
    .line 7092
    move-result v1

    .line 7093
    if-eqz v1, :cond_109

    .line 7094
    .line 7095
    move v6, v10

    .line 7096
    :cond_109
    invoke-interface {p0, v2, v0, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 7097
    .line 7098
    .line 7099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7100
    .line 7101
    .line 7102
    return v10

    .line 7103
    :cond_10a
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7104
    .line 7105
    .line 7106
    return v10

    .line 7107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
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
