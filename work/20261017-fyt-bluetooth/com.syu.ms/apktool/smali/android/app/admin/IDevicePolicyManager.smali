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

.method public abstract getCameraDisabled(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getCurrentFailedPasswordAttempts(I)I
.end method

.method public abstract getDeviceOwner()Ljava/lang/String;
.end method

.method public abstract getDeviceOwnerName()Ljava/lang/String;
.end method

.method public abstract getGlobalProxyAdmin(I)Landroid/content/ComponentName;
.end method

.method public abstract getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
.end method

.method public abstract getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
.end method

.method public abstract getMaximumTimeToLock(Landroid/content/ComponentName;I)J
.end method

.method public abstract getPasswordExpiration(Landroid/content/ComponentName;I)J
.end method

.method public abstract getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
.end method

.method public abstract getPasswordHistoryLength(Landroid/content/ComponentName;I)I
.end method

.method public abstract getPasswordMinimumLength(Landroid/content/ComponentName;I)I
.end method

.method public abstract getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
.end method

.method public abstract getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
.end method

.method public abstract getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
.end method

.method public abstract getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
.end method

.method public abstract getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
.end method

.method public abstract getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
.end method

.method public abstract getPasswordQuality(Landroid/content/ComponentName;I)I
.end method

.method public abstract getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
.end method

.method public abstract getStorageEncryption(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getStorageEncryptionStatus(I)I
.end method

.method public abstract hasGrantedPolicy(Landroid/content/ComponentName;II)Z
.end method

.method public abstract installCaCert([B)Z
.end method

.method public abstract isActivePasswordSufficient(I)Z
.end method

.method public abstract isAdminActive(Landroid/content/ComponentName;I)Z
.end method

.method public abstract isDeviceOwner(Ljava/lang/String;)Z
.end method

.method public abstract lockNow()V
.end method

.method public abstract packageHasActiveAdmins(Ljava/lang/String;I)Z
.end method

.method public abstract removeActiveAdmin(Landroid/content/ComponentName;I)V
.end method

.method public abstract reportFailedPasswordAttempt(I)V
.end method

.method public abstract reportSuccessfulPasswordAttempt(I)V
.end method

.method public abstract resetPassword(Ljava/lang/String;II)Z
.end method

.method public abstract setActiveAdmin(Landroid/content/ComponentName;ZI)V
.end method

.method public abstract setActivePasswordState(IIIIIIIII)V
.end method

.method public abstract setCameraDisabled(Landroid/content/ComponentName;ZI)V
.end method

.method public abstract setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
.end method

.method public abstract setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
.end method

.method public abstract setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
.end method

.method public abstract setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
.end method

.method public abstract setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
.end method

.method public abstract setPasswordHistoryLength(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPasswordMinimumLength(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
.end method

.method public abstract setPasswordQuality(Landroid/content/ComponentName;II)V
.end method

.method public abstract setStorageEncryption(Landroid/content/ComponentName;ZI)I
.end method

.method public abstract uninstallCaCert([B)V
.end method

.method public abstract wipeData(II)V
.end method
