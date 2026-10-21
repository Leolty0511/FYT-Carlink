.class public Landroid/net/ethernet/EthernetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field public mService:Landroid/net/ethernet/IEthernetManager;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/IEthernetManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    return-void
.end method

.method private static LOG(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EthernetManager"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getEthernetCarrierState()I
    .locals 1

    const-string v0, "getEthernetCarrierState() : Entered."

    .line 1
    invoke-static {v0}, Landroid/net/ethernet/EthernetManager;->LOG(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v0}, Landroid/net/ethernet/IEthernetManager;->getEthernetCarrierState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEthernetConnectState()I
    .locals 1

    const-string v0, "getEthernetState() : Entered."

    .line 1
    invoke-static {v0}, Landroid/net/ethernet/EthernetManager;->LOG(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v0}, Landroid/net/ethernet/IEthernetManager;->getEthernetConnectState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEthernetIfaceName()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v0}, Landroid/net/ethernet/IEthernetManager;->getEthernetIfaceName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "EthernetManager"

    const-string v1, "get ethernet interface name failed"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "eth0"

    return-object v0
.end method

.method public getEthernetIfaceState()I
    .locals 1

    const-string v0, "getEthernetIfaceState() : Entered."

    .line 1
    invoke-static {v0}, Landroid/net/ethernet/EthernetManager;->LOG(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v0}, Landroid/net/ethernet/IEthernetManager;->getEthernetIfaceState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEthernetEnabled(Z)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v0, p1}, Landroid/net/ethernet/IEthernetManager;->setEthernetEnabled(Z)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
