.class public interface abstract Lcom/google/android/projection/proto/Protos$NavigationStateOrBuilder;
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
    name = "NavigationStateOrBuilder"
.end annotation


# virtual methods
.method public abstract getDestinations(I)Lcom/google/android/projection/proto/Protos$NavigationDestination;
.end method

.method public abstract getDestinationsCount()I
.end method

.method public abstract getDestinationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationDestination;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDestinationsOrBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationDestinationOrBuilder;
.end method

.method public abstract getDestinationsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationDestinationOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSteps(I)Lcom/google/android/projection/proto/Protos$NavigationStep;
.end method

.method public abstract getStepsCount()I
.end method

.method public abstract getStepsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NavigationStep;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStepsOrBuilder(I)Lcom/google/android/projection/proto/Protos$NavigationStepOrBuilder;
.end method

.method public abstract getStepsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NavigationStepOrBuilder;",
            ">;"
        }
    .end annotation
.end method
