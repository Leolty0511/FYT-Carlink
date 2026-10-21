.class public interface abstract Lcom/google/android/projection/protocol/WirelessProjectionProtocol$WifiProjectionProtocolCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/projection/common/UsedByNative;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/WirelessProjectionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiProjectionProtocolCallback"
.end annotation


# virtual methods
.method public abstract canStartProjection(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;)Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method

.method public abstract isKnownDevice(Ljava/lang/String;)Z
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method

.method public abstract onClientLost(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;)V
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method

.method public abstract onReadyForProjection(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;)V
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method

.method public abstract onWifiConnectStatus(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;Ljava/lang/String;)V
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method

.method public abstract onWifiVersionResponseFailure(Lcom/google/android/projection/protocol/WirelessProjectionProtocol$ClientInfo;Lcom/google/android/projection/proto/WifiDiscoveryProtos$MessageStatus;)V
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method
