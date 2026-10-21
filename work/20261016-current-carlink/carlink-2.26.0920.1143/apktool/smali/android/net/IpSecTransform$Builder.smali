.class public Landroid/net/IpSecTransform$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/IpSecConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Landroid/net/IpSecConfig;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/net/IpSecConfig;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public buildTransportModeTransform(Ljava/net/InetAddress;)Landroid/net/IpSecTransform;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/net/IpSecConfig;->mode:I

    .line 5
    .line 6
    iput-object p1, v0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    .line 7
    .line 8
    new-instance p1, Landroid/net/IpSecTransform;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {p1, v1, v0, v2}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;Landroid/net/IpSecTransform$1;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/net/IpSecTransform;->access$300(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public buildTunnelModeTransform(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/IpSecTransform;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    .line 4
    .line 5
    iput-object p2, v0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, v0, Landroid/net/IpSecConfig;->mode:I

    .line 9
    .line 10
    new-instance p1, Landroid/net/IpSecTransform;

    .line 11
    .line 12
    iget-object p2, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p1, p2, v0, v1}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;Landroid/net/IpSecTransform$1;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public setAuthentication(ILandroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object p1, v0, p1

    iput-object p2, p1, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    return-object p0
.end method

.method public setEncryption(ILandroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object p1, v0, p1

    iput-object p2, p1, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    return-object p0
.end method

.method public setIpv4Encapsulation(Landroid/net/IpSecManager$UdpEncapsulationSocket;I)Landroid/net/IpSecTransform$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Landroid/net/IpSecConfig;->encapType:I

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getResourceId()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, v0, Landroid/net/IpSecConfig;->encapLocalPortResourceId:I

    .line 11
    .line 12
    iget-object p1, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    .line 13
    .line 14
    iput p2, p1, Landroid/net/IpSecConfig;->encapRemotePort:I

    .line 15
    .line 16
    return-object p0
.end method

.method public setNattKeepalive(I)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput p1, v0, Landroid/net/IpSecConfig;->nattKeepaliveInterval:I

    return-object p0
.end method

.method public setSpi(ILandroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object p1, v0, p1

    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result p2

    iput p2, p1, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    return-object p0
.end method

.method public setUnderlyingNetwork(Landroid/net/Network;)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p1, v0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    return-object p0
.end method
