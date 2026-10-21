.class Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;


# annotations
.annotation build Lcom/google/android/projection/common/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/WirelessProjectionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiProjectionInfoProviderInternal"
.end annotation


# instance fields
.field private final wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;

    invoke-interface {v0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;->getBssid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->getProjectionPortInfo()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;

    invoke-interface {v0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->getProjectionPortInfo()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getProjectionPortInfo()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;

    invoke-interface {v0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;->getProjectionPortInfo()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityMode()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;

    invoke-interface {v0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;->getSecurityMode()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityModeInt()I
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->getSecurityMode()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;->getNumber()I

    move-result v0

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProviderInternal;->wifiProjectionInfoProvider:Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;

    invoke-interface {v0}, Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;->getSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
