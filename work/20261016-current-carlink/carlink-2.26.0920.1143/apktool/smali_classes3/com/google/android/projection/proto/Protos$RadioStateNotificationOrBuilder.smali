.class public interface abstract Lcom/google/android/projection/proto/Protos$RadioStateNotificationOrBuilder;
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
    name = "RadioStateNotificationOrBuilder"
.end annotation


# virtual methods
.method public abstract getActiveRadioId()I
.end method

.method public abstract getProgramList(I)Lcom/google/android/projection/proto/Protos$RadioStationInfo;
.end method

.method public abstract getProgramListCount()I
.end method

.method public abstract getProgramListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProgramListOrBuilder(I)Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;
.end method

.method public abstract getProgramListOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRadioMuted()Z
.end method

.method public abstract getRadioSourceEnabled()Z
.end method

.method public abstract getStationInfo()Lcom/google/android/projection/proto/Protos$RadioStationInfo;
.end method

.method public abstract getStationInfoOrBuilder()Lcom/google/android/projection/proto/Protos$RadioStationInfoOrBuilder;
.end method

.method public abstract getStationPresetLists(I)Lcom/google/android/projection/proto/Protos$StationPresetList;
.end method

.method public abstract getStationPresetListsCount()I
.end method

.method public abstract getStationPresetListsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$StationPresetList;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStationPresetListsOrBuilder(I)Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;
.end method

.method public abstract getStationPresetListsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$StationPresetListOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasActiveRadioId()Z
.end method

.method public abstract hasRadioMuted()Z
.end method

.method public abstract hasRadioSourceEnabled()Z
.end method

.method public abstract hasStationInfo()Z
.end method
