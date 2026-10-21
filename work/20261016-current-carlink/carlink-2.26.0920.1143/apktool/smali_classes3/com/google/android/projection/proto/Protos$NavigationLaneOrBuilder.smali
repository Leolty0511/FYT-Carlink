.class public interface abstract Lcom/google/android/projection/proto/Protos$NavigationLaneOrBuilder;
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
    name = "NavigationLaneOrBuilder"
.end annotation


# virtual methods
.method public abstract getLaneDirections(I)Lcom/google/android/projection/proto/Protos$NavigationLane$LaneDirection;
.end method

.method public abstract getLaneDirectionsCount()I
.end method

.method public abstract getLaneDirectionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationLane$LaneDirection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLaneDirectionsOrBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationLane$LaneDirectionOrBuilder;
.end method

.method public abstract getLaneDirectionsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationLane$LaneDirectionOrBuilder;",
            ">;"
        }
    .end annotation
.end method
