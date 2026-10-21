.class public abstract Lcom/android/ims/internal/uce/UceServiceBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinder()Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase$1;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    .line 14
    .line 15
    return-object v0
.end method

.method public onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroyOptionsService(I)V
    .locals 0

    return-void
.end method

.method public onDestroyPresService(I)V
    .locals 0

    return-void
.end method

.method public onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onGetServiceStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onIsServiceStarted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStopService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
