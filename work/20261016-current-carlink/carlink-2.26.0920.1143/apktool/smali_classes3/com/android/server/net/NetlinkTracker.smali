.class public Lcom/android/server/net/NetlinkTracker;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetlinkTracker$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

.field private mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

.field private final mInterfaceName:Ljava/lang/String;

.field private final mLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NetlinkTracker/"

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 15
    .line 16
    new-instance p2, Landroid/net/LinkProperties;

    .line 17
    .line 18
    invoke-direct {p2}, Landroid/net/LinkProperties;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/android/server/net/DnsServerRepository;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 32
    .line 33
    return-void
.end method

.method private maybeLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method private maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    .line 2
    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "addressRemoved"

    .line 10
    .line 11
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1

    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "addressUpdated"

    .line 10
    .line 11
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1

    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized clearLinkProperties()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/android/server/net/DnsServerRepository;

    .line 3
    .line 4
    invoke-direct {v0}, Lcom/android/server/net/DnsServerRepository;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public declared-synchronized getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/net/LinkProperties;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "interfaceDnsServerInfo"

    .line 10
    .line 11
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 19
    .line 20
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/net/DnsServerRepository;->addServers(J[Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mDnsServerRepository:Lcom/android/server/net/DnsServerRepository;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/android/server/net/DnsServerRepository;->setDnsServersOn(Landroid/net/LinkProperties;)V

    .line 32
    .line 33
    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1

    .line 44
    :cond_0
    :goto_0
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "interfaceRemoved"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "routeRemoved"

    .line 14
    .line 15
    invoke-direct {p0, v0, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1

    .line 37
    :cond_0
    :goto_0
    return-void
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "routeUpdated"

    .line 14
    .line 15
    invoke-direct {p0, v0, p1}, Lcom/android/server/net/NetlinkTracker;->maybeLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetlinkTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/net/NetlinkTracker;->mCallback:Lcom/android/server/net/NetlinkTracker$Callback;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/server/net/NetlinkTracker$Callback;->update()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1

    .line 37
    :cond_0
    :goto_0
    return-void
.end method
