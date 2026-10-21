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
.method public abstract checkRestrictionsChallenge(Ljava/lang/String;)I
.end method

.method public abstract createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
.end method

.method public abstract getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
.end method

.method public abstract getUserHandle(I)I
.end method

.method public abstract getUserIcon(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getUserInfo(I)Landroid/content/pm/UserInfo;
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

.method public abstract hasRestrictionsChallenge()Z
.end method

.method public abstract isGuestEnabled()Z
.end method

.method public abstract isRestricted()Z
.end method

.method public abstract removeRestrictions()V
.end method

.method public abstract removeUser(I)Z
.end method

.method public abstract setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
.end method

.method public abstract setGuestEnabled(Z)V
.end method

.method public abstract setRestrictionsChallenge(Ljava/lang/String;)Z
.end method

.method public abstract setUserIcon(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setUserName(ILjava/lang/String;)V
.end method

.method public abstract setUserRestrictions(Landroid/os/Bundle;I)V
.end method

.method public abstract wipeUser(I)V
.end method
