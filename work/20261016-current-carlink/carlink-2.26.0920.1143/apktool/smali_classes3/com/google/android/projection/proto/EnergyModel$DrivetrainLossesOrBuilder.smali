.class public interface abstract Lcom/google/android/projection/proto/EnergyModel$DrivetrainLossesOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrivetrainLossesOrBuilder"
.end annotation


# virtual methods
.method public abstract getDrivetrainPowerLoss(I)Lcom/google/android/projection/proto/EnergyModel$LossSeriesAtSpeed;
.end method

.method public abstract getDrivetrainPowerLossCount()I
.end method

.method public abstract getDrivetrainPowerLossList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$LossSeriesAtSpeed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDrivetrainPowerLossOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$LossSeriesAtSpeedOrBuilder;
.end method

.method public abstract getDrivetrainPowerLossOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$LossSeriesAtSpeedOrBuilder;",
            ">;"
        }
    .end annotation
.end method
