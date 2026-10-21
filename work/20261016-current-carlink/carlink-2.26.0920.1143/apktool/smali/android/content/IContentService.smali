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

.method public abstract cancelRequest(Landroid/content/SyncRequest;)V
.end method

.method public abstract cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
.end method

.method public abstract cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
.end method

.method public abstract getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
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

.method public abstract getCurrentSyncsAsUser(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
.end method

.method public abstract getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
.end method

.method public abstract getMasterSyncAutomatically()Z
.end method

.method public abstract getMasterSyncAutomaticallyAsUser(I)Z
.end method

.method public abstract getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
.end method

.method public abstract getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
.end method

.method public abstract getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
.end method

.method public abstract getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
.end method

.method public abstract getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
.end method

.method public abstract getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
.end method

.method public abstract isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
.end method

.method public abstract isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
.end method

.method public abstract isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
.end method

.method public abstract notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIII)V
.end method

.method public abstract putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
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

.method public abstract setMasterSyncAutomaticallyAsUser(ZI)V
.end method

.method public abstract setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
.end method

.method public abstract setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
.end method

.method public abstract sync(Landroid/content/SyncRequest;)V
.end method

.method public abstract syncAsUser(Landroid/content/SyncRequest;I)V
.end method

.method public abstract unregisterContentObserver(Landroid/database/IContentObserver;)V
.end method
