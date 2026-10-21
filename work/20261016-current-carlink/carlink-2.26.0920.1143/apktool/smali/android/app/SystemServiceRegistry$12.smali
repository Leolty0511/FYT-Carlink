.class final Landroid/app/SystemServiceRegistry$12;
.super Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 2

    const-string v0, "connectivity"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/net/ConnectivityManager;

    invoke-direct {v1, p1, v0}, Landroid/net/ConnectivityManager;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$12;->createService(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    return-object p1
.end method
