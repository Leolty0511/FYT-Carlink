.class final Landroid/app/SystemServiceRegistry$76;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/service/oemlock/OemLockManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/service/oemlock/OemLockManager;
    .locals 2

    const-string/jumbo v0, "oem_lock"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/service/oemlock/IOemLockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/oemlock/IOemLockService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroid/service/oemlock/OemLockManager;

    invoke-direct {v1, v0}, Landroid/service/oemlock/OemLockManager;-><init>(Landroid/service/oemlock/IOemLockService;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$76;->createService()Landroid/service/oemlock/OemLockManager;

    move-result-object v0

    return-object v0
.end method
