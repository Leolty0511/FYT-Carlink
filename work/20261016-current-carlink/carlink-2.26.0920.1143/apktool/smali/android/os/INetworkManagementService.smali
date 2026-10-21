.class public interface abstract Landroid/os/INetworkManagementService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addIdleTimer(Ljava/lang/String;II)V
.end method

.method public abstract addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addInterfaceToNetwork(Ljava/lang/String;I)V
.end method

.method public abstract addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
.end method

.method public abstract addRoute(ILandroid/net/RouteInfo;)V
.end method

.method public abstract addUpstreamV6Interface(Ljava/lang/String;)V
.end method

.method public abstract addVpnUidRanges(I[Landroid/net/UidRange;)V
.end method

.method public abstract allowProtect(I)V
.end method

.method public abstract attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clearDefaultNetId()V
.end method

.method public abstract clearInterfaceAddresses(Ljava/lang/String;)V
.end method

.method public abstract clearPermission([I)V
.end method

.method public abstract createPhysicalNetwork(ILjava/lang/String;)V
.end method

.method public abstract createVirtualNetwork(IZZ)V
.end method

.method public abstract denyProtect(I)V
.end method

.method public abstract detachPppd(Ljava/lang/String;)V
.end method

.method public abstract disableIpv6(Ljava/lang/String;)V
.end method

.method public abstract disableNat(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enableIpv6(Ljava/lang/String;)V
.end method

.method public abstract enableNat(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getDnsForwarders()[Ljava/lang/String;
.end method

.method public abstract getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
.end method

.method public abstract getIpForwardingEnabled()Z
.end method

.method public abstract getNetdService()Landroid/net/INetd;
.end method

.method public abstract getNetworkStatsDetail()Landroid/net/NetworkStats;
.end method

.method public abstract getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
.end method

.method public abstract getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
.end method

.method public abstract getNetworkStatsTethering(I)Landroid/net/NetworkStats;
.end method

.method public abstract getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
.end method

.method public abstract isBandwidthControlEnabled()Z
.end method

.method public abstract isClatdStarted(Ljava/lang/String;)Z
.end method

.method public abstract isFirewallEnabled()Z
.end method

.method public abstract isNetworkActive()Z
.end method

.method public abstract isNetworkRestricted(I)Z
.end method

.method public abstract isTetheringStarted()Z
.end method

.method public abstract listInterfaces()[Ljava/lang/String;
.end method

.method public abstract listTetheredInterfaces()[Ljava/lang/String;
.end method

.method public abstract listTtys()[Ljava/lang/String;
.end method

.method public abstract registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
.end method

.method public abstract registerObserver(Landroid/net/INetworkManagementEventObserver;)V
.end method

.method public abstract registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
.end method

.method public abstract removeIdleTimer(Ljava/lang/String;)V
.end method

.method public abstract removeInterfaceAlert(Ljava/lang/String;)V
.end method

.method public abstract removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
.end method

.method public abstract removeInterfaceFromNetwork(Ljava/lang/String;I)V
.end method

.method public abstract removeInterfaceQuota(Ljava/lang/String;)V
.end method

.method public abstract removeNetwork(I)V
.end method

.method public abstract removeRoute(ILandroid/net/RouteInfo;)V
.end method

.method public abstract removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract removeUpstreamV6Interface(Ljava/lang/String;)V
.end method

.method public abstract removeVpnUidRanges(I[Landroid/net/UidRange;)V
.end method

.method public abstract setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
.end method

.method public abstract setDataSaverModeEnabled(Z)Z
.end method

.method public abstract setDefaultNetId(I)V
.end method

.method public abstract setDnsConfigurationForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
.end method

.method public abstract setFirewallChainEnabled(IZ)V
.end method

.method public abstract setFirewallEnabled(Z)V
.end method

.method public abstract setFirewallInterfaceRule(Ljava/lang/String;Z)V
.end method

.method public abstract setFirewallUidRule(III)V
.end method

.method public abstract setFirewallUidRules(I[I[I)V
.end method

.method public abstract setGlobalAlert(J)V
.end method

.method public abstract setIPv6AddrGenMode(Ljava/lang/String;I)V
.end method

.method public abstract setInterfaceAlert(Ljava/lang/String;J)V
.end method

.method public abstract setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
.end method

.method public abstract setInterfaceDown(Ljava/lang/String;)V
.end method

.method public abstract setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V
.end method

.method public abstract setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
.end method

.method public abstract setInterfaceQuota(Ljava/lang/String;J)V
.end method

.method public abstract setInterfaceUp(Ljava/lang/String;)V
.end method

.method public abstract setIpForwardingEnabled(Z)V
.end method

.method public abstract setMtu(Ljava/lang/String;I)V
.end method

.method public abstract setNetworkPermission(ILjava/lang/String;)V
.end method

.method public abstract setPermission(Ljava/lang/String;[I)V
.end method

.method public abstract setUidCleartextNetworkPolicy(II)V
.end method

.method public abstract setUidMeteredNetworkBlacklist(IZ)V
.end method

.method public abstract setUidMeteredNetworkWhitelist(IZ)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract startClatd(Ljava/lang/String;)V
.end method

.method public abstract startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startTethering([Ljava/lang/String;)V
.end method

.method public abstract stopClatd(Ljava/lang/String;)V
.end method

.method public abstract stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract stopTethering()V
.end method

.method public abstract tetherInterface(Ljava/lang/String;)V
.end method

.method public abstract tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
.end method

.method public abstract unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
.end method

.method public abstract unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
.end method

.method public abstract unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
.end method

.method public abstract untetherInterface(Ljava/lang/String;)V
.end method
