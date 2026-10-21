.class public interface abstract Lcom/google/android/projection/proto/Protos$NavigationStepOrBuilder;
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
    name = "NavigationStepOrBuilder"
.end annotation


# virtual methods
.method public abstract getCue()Lcom/google/android/projection/proto/Protos$NavigationCue;
.end method

.method public abstract getCueOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationCueOrBuilder;
.end method

.method public abstract getLanes(I)Lcom/google/android/projection/proto/Protos$NavigationLane;
.end method

.method public abstract getLanesCount()I
.end method

.method public abstract getLanesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLanesOrBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;
.end method

.method public abstract getLanesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getManeuver()Lcom/google/android/projection/proto/Protos$NavigationManeuver;
.end method

.method public abstract getManeuverOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationManeuverOrBuilder;
.end method

.method public abstract getRoad()Lcom/google/android/projection/proto/Protos$NavigationRoad;
.end method

.method public abstract getRoadOrBuilder()Lcom/google/android/projection/proto/Protos$NavigationRoadOrBuilder;
.end method

.method public abstract hasCue()Z
.end method

.method public abstract hasManeuver()Z
.end method

.method public abstract hasRoad()Z
.end method
