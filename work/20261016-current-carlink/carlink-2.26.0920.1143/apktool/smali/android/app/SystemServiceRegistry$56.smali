.class final Landroid/app/SystemServiceRegistry$56;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/net/wifi/RttManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/wifi/RttManager;
    .locals 3

    const-string/jumbo v0, "rttmanager"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/net/wifi/IRttManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IRttManager;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/net/wifi/RttManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/net/ConnectivityThread;->getInstanceLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Landroid/net/wifi/RttManager;-><init>(Landroid/content/Context;Landroid/net/wifi/IRttManager;Landroid/os/Looper;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$56;->createService(Landroid/app/ContextImpl;)Landroid/net/wifi/RttManager;

    move-result-object p1

    return-object p1
.end method
