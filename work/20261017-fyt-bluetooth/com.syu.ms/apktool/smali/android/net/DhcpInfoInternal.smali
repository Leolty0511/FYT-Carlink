.class public Landroid/net/DhcpInfoInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DhcpInfoInternal"


# instance fields
.field public dns1:Ljava/lang/String;

.field public dns2:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public leaseDuration:I

.field private mRoutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public prefixLength:I

.field public serverAddress:Ljava/lang/String;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DhcpInfoInternal;->mRoutes:Ljava/util/Collection;

    return-void
.end method

.method private convertToInt(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addRoute(Landroid/net/RouteInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/DhcpInfoInternal;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRoutes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/net/DhcpInfoInternal;->mRoutes:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasMeteredHint()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/DhcpInfoInternal;->vendorInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "ANDROID_METERED"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeDhcpInfo()Landroid/net/DhcpInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/DhcpInfoInternal;->convertToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 3
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->mRoutes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 4
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DhcpInfoInternal;->convertToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->gateway:I

    .line 6
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 7
    iget v1, p0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    invoke-static {v1}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->netmask:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/DhcpInfoInternal;->convertToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->dns1:I

    .line 9
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/DhcpInfoInternal;->convertToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->dns2:I

    .line 10
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/DhcpInfoInternal;->convertToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/DhcpInfo;->serverAddress:I

    .line 11
    iget v1, p0, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    iput v1, v0, Landroid/net/DhcpInfo;->leaseDuration:I

    return-object v0
.end method

.method public makeLinkAddress()Landroid/net/LinkAddress;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DhcpInfoInternal"

    const-string v1, "makeLinkAddress with empty ipAddress"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/net/LinkAddress;

    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public makeLinkProperties()Landroid/net/LinkProperties;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 3
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->mRoutes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 4
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DhcpInfoInternal"

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    :cond_1
    const-string v1, "makeLinkProperties with empty dns1!"

    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_1
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_2

    :cond_2
    const-string v1, "makeLinkProperties with empty dns2!"

    .line 10
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/DhcpInfoInternal;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/DhcpInfoInternal;->prefixLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRoutes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dhcpServer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leaseDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromDhcpRequest(Landroid/net/DhcpInfoInternal;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p1, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/net/DhcpInfoInternal;->mRoutes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->getRoutes()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 7
    invoke-virtual {p0, v0}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    :cond_3
    return-void
.end method
