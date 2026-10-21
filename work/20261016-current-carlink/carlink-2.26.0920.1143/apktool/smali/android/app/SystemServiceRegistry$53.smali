.class final Landroid/app/SystemServiceRegistry$53;
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
        "Landroid/net/wifi/p2p/WifiP2pManager;",
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
.method public createService()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 2

    const-string/jumbo v0, "wifip2p"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {v1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;-><init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V

    return-object v1
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$53;->createService()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    return-object v0
.end method
