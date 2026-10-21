.class public interface abstract Landroid/os/IUserManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IUserManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract canAddMoreManagedProfiles(IZ)Z
.end method

.method public abstract canHaveRestrictedProfile(I)Z
.end method

.method public abstract clearSeedAccountData()V
.end method

.method public abstract createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
.end method

.method public abstract createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
.end method

.method public abstract createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
.end method

.method public abstract createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
.end method

.method public abstract evictCredentialEncryptionKey(I)V
.end method

.method public abstract getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getCredentialOwnerProfile(I)I
.end method

.method public abstract getDefaultGuestRestrictions()Landroid/os/Bundle;
.end method

.method public abstract getManagedProfileBadge(I)I
.end method

.method public abstract getPrimaryUser()Landroid/content/pm/UserInfo;
.end method

.method public abstract getProfileIds(IZ)[I
.end method

.method public abstract getProfileParent(I)Landroid/content/pm/UserInfo;
.end method

.method public abstract getProfiles(IZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeedAccountName()Ljava/lang/String;
.end method

.method public abstract getSeedAccountOptions()Landroid/os/PersistableBundle;
.end method

.method public abstract getSeedAccountType()Ljava/lang/String;
.end method

.method public abstract getUserAccount(I)Ljava/lang/String;
.end method

.method public abstract getUserCreationTime(I)J
.end method

.method public abstract getUserHandle(I)I
.end method

.method public abstract getUserIcon(I)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getUserInfo(I)Landroid/content/pm/UserInfo;
.end method

.method public abstract getUserRestrictionSource(Ljava/lang/String;I)I
.end method

.method public abstract getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserRestrictions(I)Landroid/os/Bundle;
.end method

.method public abstract getUserSerialNumber(I)I
.end method

.method public abstract getUsers(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasBaseUserRestriction(Ljava/lang/String;I)Z
.end method

.method public abstract hasUserRestriction(Ljava/lang/String;I)Z
.end method

.method public abstract isDemoUser(I)Z
.end method

.method public abstract isManagedProfile(I)Z
.end method

.method public abstract isQuietModeEnabled(I)Z
.end method

.method public abstract isRestricted()Z
.end method

.method public abstract isSameProfileGroup(II)Z
.end method

.method public abstract isUserNameSet(I)Z
.end method

.method public abstract isUserRunning(I)Z
.end method

.method public abstract isUserUnlocked(I)Z
.end method

.method public abstract isUserUnlockingOrUnlocked(I)Z
.end method

.method public abstract markGuestForDeletion(I)Z
.end method

.method public abstract removeUser(I)Z
.end method

.method public abstract removeUserEvenWhenDisallowed(I)Z
.end method

.method public abstract setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract setDefaultGuestRestrictions(Landroid/os/Bundle;)V
.end method

.method public abstract setQuietModeEnabled(IZ)V
.end method

.method public abstract setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
.end method

.method public abstract setUserAccount(ILjava/lang/String;)V
.end method

.method public abstract setUserEnabled(I)V
.end method

.method public abstract setUserIcon(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setUserName(ILjava/lang/String;)V
.end method

.method public abstract setUserRestriction(Ljava/lang/String;ZI)V
.end method

.method public abstract someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
.end method
