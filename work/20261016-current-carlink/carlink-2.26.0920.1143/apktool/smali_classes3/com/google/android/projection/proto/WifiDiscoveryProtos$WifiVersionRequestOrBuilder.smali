.class public interface abstract Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiVersionRequestOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/WifiDiscoveryProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiVersionRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getHeadunitInfo()Lcom/google/android/projection/proto/Common$HeadUnitInfo;
.end method

.method public abstract getHeadunitInfoOrBuilder()Lcom/google/android/projection/proto/Common$HeadUnitInfoOrBuilder;
.end method

.method public abstract getMajorVersion()I
.end method

.method public abstract getMinorVersion()I
.end method

.method public abstract getSupportedWifiChannelType()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiChannelType;
.end method

.method public abstract getSupportedWifiChannels(I)I
.end method

.method public abstract getSupportedWifiChannelsCount()I
.end method

.method public abstract getSupportedWifiChannelsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiProjectionProtocolInfo()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfo;
.end method

.method public abstract getWifiProjectionProtocolInfoOrBuilder()Lcom/google/android/projection/proto/WifiDiscoveryProtos$WifiProjectionProtocolInfoOrBuilder;
.end method

.method public abstract hasHeadunitInfo()Z
.end method

.method public abstract hasMajorVersion()Z
.end method

.method public abstract hasMinorVersion()Z
.end method

.method public abstract hasSupportedWifiChannelType()Z
.end method

.method public abstract hasWifiProjectionProtocolInfo()Z
.end method
