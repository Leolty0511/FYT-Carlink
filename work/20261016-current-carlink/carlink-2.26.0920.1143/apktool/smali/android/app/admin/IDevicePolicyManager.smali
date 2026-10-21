.class public interface abstract Landroid/app/admin/IDevicePolicyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
.end method

.method public abstract addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
.end method

.method public abstract approveCaCert(Ljava/lang/String;IZ)Z
.end method

.method public abstract bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
.end method

.method public abstract checkProvisioningPreCondition(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
.end method

.method public abstract clearDeviceOwner(Ljava/lang/String;)V
.end method

.method public abstract clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
.end method

.method public abstract clearProfileOwner(Landroid/content/ComponentName;)V
.end method

.method public abstract clearResetPasswordToken(Landroid/content/ComponentName;)Z
.end method

.method public abstract createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
.end method

.method public abstract enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I
.end method

.method public abstract enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V
.end method

.method public abstract forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
.end method

.method public abstract forceUpdateUserSetupComplete()V
.end method

.method public abstract getAccountTypesWithManagementDisabled()[Ljava/lang/String;
.end method

.method public abstract getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
.end method

.method public abstract getActiveAdmins(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract getAutoTimeRequired()Z
.end method

.method public abstract getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract getBluetoothContactSharingDisabledForUser(I)Z
.end method

.method public abstract getCameraDisabled(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract getCrossProfileCallerIdDisabledForUser(I)Z
.end method

.method public abstract getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract getCrossProfileContactsSearchDisabledForUser(I)Z
.end method

.method public abstract getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentFailedPasswordAttempts(IZ)I
.end method

.method public abstract getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceOwnerComponent(Z)Landroid/content/ComponentName;
.end method

.method public abstract getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
.end method

.method public abstract getDeviceOwnerName()Ljava/lang/String;
.end method

.method public abstract getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
.end method

.method public abstract getDeviceOwnerUserId()I
.end method

.method public abstract getDoNotAskCredentialsOnBoot()Z
.end method

.method public abstract getForceEphemeralUsers(Landroid/content/ComponentName;)Z
.end method

.method public abstract getGlobalProxyAdmin(I)Landroid/content/ComponentName;
.end method

.method public abstract getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getLastBugReportRequestTime()J
.end method

.method public abstract getLastNetworkLogRetrievalTime()J
.end method

.method public abstract getLastSecurityLogRetrievalTime()J
.end method

.method public abstract getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
.end method

.method public abstract getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
.end method

.method public abstract getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
.end method

.method public abstract getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J
.end method

.method public abstract getMaximumTimeToLockForUserAndProfiles(I)J
.end method

.method public abstract getOrganizationColor(Landroid/content/ComponentName;)I
.end method

.method public abstract getOrganizationColorForUser(I)I
.end method

.method public abstract getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
.end method

.method public abstract getOrganizationNameForUser(I)Ljava/lang/CharSequence;
.end method

.method public abstract getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;
.end method

.method public abstract getPasswordExpiration(Landroid/content/ComponentName;IZ)J
.end method

.method public abstract getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J
.end method

.method public abstract getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPasswordQuality(Landroid/content/ComponentName;IZ)I
.end method

.method public abstract getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
.end method

.method public abstract getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getPermissionPolicy(Landroid/content/ComponentName;)I
.end method

.method public abstract getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
.end method

.method public abstract getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
.end method

.method public abstract getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
.end method

.method public abstract getPermittedInputMethodsForCurrentUser()Ljava/util/List;
.end method

.method public abstract getProfileOwner(I)Landroid/content/ComponentName;
.end method

.method public abstract getProfileOwnerName(I)Ljava/lang/String;
.end method

.method public abstract getProfileWithMinimumFailedPasswordsForWipe(IZ)I
.end method

.method public abstract getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
.end method

.method public abstract getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J
.end method

.method public abstract getRestrictionsProvider(I)Landroid/content/ComponentName;
.end method

.method public abstract getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
.end method

.method public abstract getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
.end method

.method public abstract getStorageEncryption(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getStorageEncryptionStatus(Ljava/lang/String;I)I
.end method

.method public abstract getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
.end method

.method public abstract getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "IZ)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserProvisioningState()I
.end method

.method public abstract getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;
.end method

.method public abstract getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract hasDeviceOwner()Z
.end method

.method public abstract hasGrantedPolicy(Landroid/content/ComponentName;II)Z
.end method

.method public abstract hasUserSetupCompleted()Z
.end method

.method public abstract installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z
.end method

.method public abstract installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;Z)Z
.end method

.method public abstract isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract isActivePasswordSufficient(IZ)Z
.end method

.method public abstract isAdminActive(Landroid/content/ComponentName;I)Z
.end method

.method public abstract isAffiliatedUser()Z
.end method

.method public abstract isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isBackupServiceEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract isCaCertApproved(Ljava/lang/String;I)Z
.end method

.method public abstract isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z
.end method

.method public abstract isCurrentInputMethodSetByOwner()Z
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract isDeviceProvisioningConfigApplied()Z
.end method

.method public abstract isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract isLockTaskPermitted(Ljava/lang/String;)Z
.end method

.method public abstract isManagedProfile(Landroid/content/ComponentName;)Z
.end method

.method public abstract isMasterVolumeMuted(Landroid/content/ComponentName;)Z
.end method

.method public abstract isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isProfileActivePasswordSufficientForParent(I)Z
.end method

.method public abstract isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isRemovingAdmin(Landroid/content/ComponentName;I)Z
.end method

.method public abstract isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
.end method

.method public abstract isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract isSeparateProfileChallengeAllowed(I)Z
.end method

.method public abstract isSystemOnlyUser(Landroid/content/ComponentName;)Z
.end method

.method public abstract isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract isUninstallInQueue(Ljava/lang/String;)Z
.end method

.method public abstract lockNow(IZ)V
.end method

.method public abstract notifyLockTaskModeChanged(ZLjava/lang/String;I)V
.end method

.method public abstract notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
.end method

.method public abstract packageHasActiveAdmins(Ljava/lang/String;I)Z
.end method

.method public abstract reboot(Landroid/content/ComponentName;)V
.end method

.method public abstract removeActiveAdmin(Landroid/content/ComponentName;I)V
.end method

.method public abstract removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
.end method

.method public abstract reportFailedFingerprintAttempt(I)V
.end method

.method public abstract reportFailedPasswordAttempt(I)V
.end method

.method public abstract reportKeyguardDismissed(I)V
.end method

.method public abstract reportKeyguardSecured(I)V
.end method

.method public abstract reportPasswordChanged(I)V
.end method

.method public abstract reportSuccessfulFingerprintAttempt(I)V
.end method

.method public abstract reportSuccessfulPasswordAttempt(I)V
.end method

.method public abstract requestBugreport(Landroid/content/ComponentName;)Z
.end method

.method public abstract resetPassword(Ljava/lang/String;I)Z
.end method

.method public abstract resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
.end method

.method public abstract retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
.end method

.method public abstract setActiveAdmin(Landroid/content/ComponentName;ZI)V
.end method

.method public abstract setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V
.end method

.method public abstract setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
.end method

.method public abstract setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract setAutoTimeRequired(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setCameraDisabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
.end method

.method public abstract setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
.end method

.method public abstract setDeviceProvisioningConfigApplied()V
.end method

.method public abstract setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
.end method

.method public abstract setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
.end method

.method public abstract setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
.end method

.method public abstract setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
.end method

.method public abstract setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
.end method

.method public abstract setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setOrganizationColor(Landroid/content/ComponentName;I)V
.end method

.method public abstract setOrganizationColorForUser(II)V
.end method

.method public abstract setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
.end method

.method public abstract setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
.end method

.method public abstract setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
.end method

.method public abstract setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPasswordQuality(Landroid/content/ComponentName;IZ)V
.end method

.method public abstract setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end method

.method public abstract setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
.end method

.method public abstract setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
.end method

.method public abstract setProfileEnabled(Landroid/content/ComponentName;)V
.end method

.method public abstract setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
.end method

.method public abstract setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
.end method

.method public abstract setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
.end method

.method public abstract setResetPasswordToken(Landroid/content/ComponentName;[B)Z
.end method

.method public abstract setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
.end method

.method public abstract setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
.end method

.method public abstract setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
.end method

.method public abstract setStorageEncryption(Landroid/content/ComponentName;Z)I
.end method

.method public abstract setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
.end method

.method public abstract setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
.end method

.method public abstract setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setUserProvisioningState(II)V
.end method

.method public abstract setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
.end method

.method public abstract startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
.end method

.method public abstract switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
.end method

.method public abstract uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
.end method

.method public abstract wipeData(I)V
.end method
