.class public final Landroid/companion/CompanionDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/CompanionDeviceManager$CallbackProxy;,
        Landroid/companion/CompanionDeviceManager$Callback;
    }
.end annotation


# static fields
.field public static final COMPANION_DEVICE_DISCOVERY_PACKAGE_NAME:Ljava/lang/String; = "com.android.companiondevicemanager"

.field private static final DEBUG:Z = false

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.companion.extra.DEVICE"

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/companion/ICompanionDeviceManager;


# direct methods
.method public constructor <init>(Landroid/companion/ICompanionDeviceManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;
    .locals 0

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Landroid/companion/CompanionDeviceManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;
    .locals 0

    iget-object p0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    return-object p0
.end method

.method private checkFeaturePresent()Z
    .locals 1

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private getCallingPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "Request cannot be null"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v0, "Callback cannot be null"

    .line 14
    .line 15
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 19
    .line 20
    new-instance v7, Landroid/companion/CompanionDeviceManager$CallbackProxy;

    .line 21
    .line 22
    invoke-static {p3}, Landroid/os/Handler;->mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v1, v7

    .line 28
    move-object v2, p0

    .line 29
    move-object v3, p1

    .line 30
    move-object v4, p2

    .line 31
    invoke-direct/range {v1 .. v6}, Landroid/companion/CompanionDeviceManager$CallbackProxy;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$1;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {v0, p1, v7, p2}, Landroid/companion/ICompanionDeviceManager;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    throw p1
.end method

.method public disassociate(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, p1, v1}, Landroid/companion/ICompanionDeviceManager;->disassociate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method

.method public getAssociations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->getCallingPackage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-interface {v0, v1, v2}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    throw v0
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    throw p1
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/companion/CompanionDeviceManager;->checkFeaturePresent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mService:Landroid/companion/ICompanionDeviceManager;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/companion/ICompanionDeviceManager;->requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v0, p0, Landroid/companion/CompanionDeviceManager;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :catch_1
    move-exception p1

    .line 36
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    throw p1
.end method
