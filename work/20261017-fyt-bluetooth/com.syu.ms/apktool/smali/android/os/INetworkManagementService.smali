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
.method public abstract addIdleTimer(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
.end method

.method public abstract addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
.end method

.method public abstract attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clearDnsInterfaceForPid(I)V
.end method

.method public abstract clearDnsInterfaceForUidRange(Ljava/lang/String;II)V
.end method

.method public abstract clearDnsInterfaceMaps()V
.end method

.method public abstract clearHostExemption(Landroid/net/LinkAddress;)V
.end method

.method public abstract clearInterfaceAddresses(Ljava/lang/String;)V
.end method

.method public abstract clearMarkedForwarding(Ljava/lang/String;)V
.end method

.method public abstract clearMarkedForwardingRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
.end method

.method public abstract clearUidRangeRoute(Ljava/lang/String;II)V
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

.method public abstract flushDefaultDnsCache()V
.end method

.method public abstract flushInterfaceDnsCache(Ljava/lang/String;)V
.end method

.method public abstract getDnsForwarders()[Ljava/lang/String;
.end method

.method public abstract getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
.end method

.method public abstract getIpForwardingEnabled()Z
.end method

.method public abstract getMarkForProtect()I
.end method

.method public abstract getMarkForUid(I)I
.end method

.method public abstract getNetworkStatsDetail()Landroid/net/NetworkStats;
.end method

.method public abstract getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
.end method

.method public abstract getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
.end method

.method public abstract getNetworkStatsTethering()Landroid/net/NetworkStats;
.end method

.method public abstract getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
.end method

.method public abstract getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;
.end method

.method public abstract isBandwidthControlEnabled()Z
.end method

.method public abstract isClatdStarted()Z
.end method

.method public abstract isFirewallEnabled()Z
.end method

.method public abstract isTetheringStarted()Z
.end method

.method public abstract listInterfaces()[Ljava/lang/String;
.end method

.method public abstract listTetheredInterfaces()[Ljava/lang/String;
.end method

.method public abstract listTtys()[Ljava/lang/String;
.end method

.method public abstract registerObserver(Landroid/net/INetworkManagementEventObserver;)V
.end method

.method public abstract removeIdleTimer(Ljava/lang/String;)V
.end method

.method public abstract removeInterfaceAlert(Ljava/lang/String;)V
.end method

.method public abstract removeInterfaceQuota(Ljava/lang/String;)V
.end method

.method public abstract removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
.end method

.method public abstract removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
.end method

.method public abstract setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
.end method

.method public abstract setDefaultInterfaceForDns(Ljava/lang/String;)V
.end method

.method public abstract setDnsForwarders([Ljava/lang/String;)V
.end method

.method public abstract setDnsInterfaceForPid(Ljava/lang/String;I)V
.end method

.method public abstract setDnsInterfaceForUidRange(Ljava/lang/String;II)V
.end method

.method public abstract setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setFirewallEgressDestRule(Ljava/lang/String;IZ)V
.end method

.method public abstract setFirewallEgressSourceRule(Ljava/lang/String;Z)V
.end method

.method public abstract setFirewallEnabled(Z)V
.end method

.method public abstract setFirewallInterfaceRule(Ljava/lang/String;Z)V
.end method

.method public abstract setFirewallUidRule(IZ)V
.end method

.method public abstract setGlobalAlert(J)V
.end method

.method public abstract setHostExemption(Landroid/net/LinkAddress;)V
.end method

.method public abstract setInterfaceAlert(Ljava/lang/String;J)V
.end method

.method public abstract setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
.end method

.method public abstract setInterfaceDown(Ljava/lang/String;)V
.end method

.method public abstract setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
.end method

.method public abstract setInterfaceQuota(Ljava/lang/String;J)V
.end method

.method public abstract setInterfaceUp(Ljava/lang/String;)V
.end method

.method public abstract setIpForwardingEnabled(Z)V
.end method

.method public abstract setMarkedForwarding(Ljava/lang/String;)V
.end method

.method public abstract setMarkedForwardingRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
.end method

.method public abstract setMtu(Ljava/lang/String;I)V
.end method

.method public abstract setUidNetworkRules(IZ)V
.end method

.method public abstract setUidRangeRoute(Ljava/lang/String;II)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
.end method

.method public abstract startClatd(Ljava/lang/String;)V
.end method

.method public abstract startTethering([Ljava/lang/String;)V
.end method

.method public abstract stopAccessPoint(Ljava/lang/String;)V
.end method

.method public abstract stopClatd()V
.end method

.method public abstract stopTethering()V
.end method

.method public abstract tetherInterface(Ljava/lang/String;)V
.end method

.method public abstract unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
.end method

.method public abstract untetherInterface(Ljava/lang/String;)V
.end method

.method public abstract wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
.end method
