.class public interface abstract Landroid/content/IContentService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
.end method

.method public abstract addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
.end method

.method public abstract cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
.end method

.method public abstract getCurrentSyncs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
.end method

.method public abstract getMasterSyncAutomatically()Z
.end method

.method public abstract getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
.end method

.method public abstract getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
.end method

.method public abstract getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
.end method

.method public abstract isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
.end method

.method public abstract isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
.end method

.method public abstract notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
.end method

.method public abstract removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
.end method

.method public abstract requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
.end method

.method public abstract setMasterSyncAutomatically(Z)V
.end method

.method public abstract setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
.end method

.method public abstract sync(Landroid/content/SyncRequest;)V
.end method

.method public abstract unregisterContentObserver(Landroid/database/IContentObserver;)V
.end method
