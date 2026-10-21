.class public interface abstract Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$ChargingCurveAtPowerOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChargingCurveAtPowerOrBuilder"
.end annotation


# virtual methods
.method public abstract getInputPowerWatts()I
.end method

.method public abstract getTimeToFullBattery(I)Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$ChargingCurveAtPower$TimeToFullBattery;
.end method

.method public abstract getTimeToFullBatteryCount()I
.end method

.method public abstract getTimeToFullBatteryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$ChargingCurveAtPower$TimeToFullBattery;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimeToFullBatteryOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$ChargingCurveAtPower$TimeToFullBatteryOrBuilder;
.end method

.method public abstract getTimeToFullBatteryOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$ChargingCurveAtPower$TimeToFullBatteryOrBuilder;",
            ">;"
        }
    .end annotation
.end method
