.class final Landroid/app/SystemServiceRegistry$13;
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
        "Landroid/net/ConnectivityManagerEx;",
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
.method public createService(Landroid/content/Context;)Landroid/net/ConnectivityManagerEx;
    .locals 2

    const-string v0, "connectionEx"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/net/IConnectivityManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManagerEx;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/net/ConnectivityManagerEx;

    invoke-direct {v1, p1, v0}, Landroid/net/ConnectivityManagerEx;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManagerEx;)V

    return-object v1
.end method

.method public bridge synthetic createService(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$13;->createService(Landroid/content/Context;)Landroid/net/ConnectivityManagerEx;

    move-result-object p1

    return-object p1
.end method
