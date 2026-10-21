.class public interface abstract Lcom/google/android/projection/proto/Protos$WifiCredentialsResponseOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiCredentialsResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getAccessPointType()Lcom/google/android/projection/proto/Protos$AccessPointType;
.end method

.method public abstract getCarWifiPassword()Ljava/lang/String;
.end method

.method public abstract getCarWifiPasswordBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCarWifiSecurityMode()Lcom/google/android/projection/proto/Protos$WifiSecurityMode;
.end method

.method public abstract getCarWifiSsid()Ljava/lang/String;
.end method

.method public abstract getCarWifiSsidBytes()Lcom/google/protobuf/ByteString;
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

.method public abstract hasAccessPointType()Z
.end method

.method public abstract hasCarWifiPassword()Z
.end method

.method public abstract hasCarWifiSecurityMode()Z
.end method

.method public abstract hasCarWifiSsid()Z
.end method
