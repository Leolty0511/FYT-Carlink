.class public interface abstract Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/WirelessProjectionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiProjectionInfoProvider"
.end annotation


# virtual methods
.method public abstract getBssid()Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getProjectionPortInfo()Ljava/net/InetSocketAddress;
.end method

.method public abstract getSecurityMode()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiSecurityMode;
.end method

.method public abstract getSsid()Ljava/lang/String;
.end method
