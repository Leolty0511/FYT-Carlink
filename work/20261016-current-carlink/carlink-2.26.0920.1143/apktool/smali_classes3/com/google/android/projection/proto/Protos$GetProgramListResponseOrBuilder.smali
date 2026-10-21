.class public interface abstract Lcom/google/android/projection/proto/Protos$GetProgramListResponseOrBuilder;
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
    name = "GetProgramListResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getCompleted()Z
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

.method public abstract getRadioId()I
.end method

.method public abstract getStatus()Lcom/google/android/projection/proto/Protos$MessageStatus;
.end method

.method public abstract hasCompleted()Z
.end method

.method public abstract hasRadioId()Z
.end method

.method public abstract hasStatus()Z
.end method
