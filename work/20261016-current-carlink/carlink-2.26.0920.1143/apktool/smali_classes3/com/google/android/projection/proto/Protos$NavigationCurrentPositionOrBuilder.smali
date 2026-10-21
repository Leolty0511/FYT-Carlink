.class public interface abstract Lcom/google/android/projection/proto/Protos$NavigationCurrentPositionOrBuilder;
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
    name = "NavigationCurrentPositionOrBuilder"
.end annotation


# virtual methods
.method public abstract getCurrentRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;
.end method

.method public abstract getCurrentRoadOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;
.end method

.method public abstract getDestinationDistances(I)Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;
.end method

.method public abstract getDestinationDistancesCount()I
.end method

.method public abstract getDestinationDistancesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistance;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDestinationDistancesOrBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationDestinationDistanceOrBuilder;
.end method

.method public abstract getDestinationDistancesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationDistanceOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStepDistance()Lcom/google/android/projection/proto/Protos$NavigationStepDistance;
.end method

.method public abstract getStepDistanceOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationStepDistanceOrBuilder;
.end method

.method public abstract hasCurrentRoad()Z
.end method

.method public abstract hasStepDistance()Z
.end method
