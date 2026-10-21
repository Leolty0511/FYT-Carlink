.class public interface abstract Lcom/google/android/projection/proto/EnergyModel$BatteryLossesOrBuilder;
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
    name = "BatteryLossesOrBuilder"
.end annotation


# virtual methods
.method public abstract getBatteryPowerLoss(I)Lcom/google/android/projection/proto/EnergyModel$LossAtPower;
.end method

.method public abstract getBatteryPowerLossCount()I
.end method

.method public abstract getBatteryPowerLossList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$LossAtPower;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBatteryPowerLossOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$LossAtPowerOrBuilder;
.end method

.method public abstract getBatteryPowerLossOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$LossAtPowerOrBuilder;",
            ">;"
        }
    .end annotation
.end method
