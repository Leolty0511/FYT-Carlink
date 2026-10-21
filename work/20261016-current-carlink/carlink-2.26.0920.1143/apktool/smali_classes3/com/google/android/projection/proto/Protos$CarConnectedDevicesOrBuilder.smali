.class public interface abstract Lcom/google/android/projection/proto/Protos$CarConnectedDevicesOrBuilder;
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
    name = "CarConnectedDevicesOrBuilder"
.end annotation


# virtual methods
.method public abstract getConnectedDevices(I)Lcom/google/android/projection/proto/Protos$ConnectedDevice;
.end method

.method public abstract getConnectedDevicesCount()I
.end method

.method public abstract getConnectedDevicesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$ConnectedDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectedDevicesOrBuilder(I)Lcom/google/android/projection/proto/Protos$ConnectedDeviceOrBuilder;
.end method

.method public abstract getConnectedDevicesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$ConnectedDeviceOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFinalList()Z
.end method

.method public abstract getUnsolicited()Z
.end method

.method public abstract hasFinalList()Z
.end method

.method public abstract hasUnsolicited()Z
.end method
