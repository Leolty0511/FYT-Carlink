.class final Landroid/app/ContextImpl$38;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo p1, "wifip2p"

    .line 1
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;-><init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V

    return-object v0
.end method
