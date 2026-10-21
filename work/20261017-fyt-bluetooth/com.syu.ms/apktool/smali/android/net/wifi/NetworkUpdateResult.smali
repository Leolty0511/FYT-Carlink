.class Landroid/net/wifi/NetworkUpdateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ipChanged:Z

.field public isNewNetwork:Z

.field public netId:I

.field public proxyChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork:Z

    .line 3
    iput p1, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    .line 4
    iput-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    .line 5
    iput-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork:Z

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    .line 9
    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    .line 10
    iput-boolean p2, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method


# virtual methods
.method public getNetworkId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    return v0
.end method

.method public hasIpChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    return v0
.end method

.method public hasProxyChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return v0
.end method

.method public isNewNetwork()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork:Z

    return v0
.end method

.method public setIpChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    return-void
.end method

.method public setIsNewNetwork(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->isNewNetwork:Z

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    return-void
.end method

.method public setProxyChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method
