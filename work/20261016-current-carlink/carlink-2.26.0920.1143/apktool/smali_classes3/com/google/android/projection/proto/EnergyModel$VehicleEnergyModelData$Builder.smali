.class public final Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;"
    }
.end annotation


# instance fields
.field private auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private auxiliaryDrainAtTemp_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
            ">;"
        }
    .end annotation
.end field

.field private auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private auxiliaryDrainAtTime_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;",
            ">;"
        }
    .end annotation
.end field

.field private batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;",
            "Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$BatteryLossesOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

.field private bitField0_:I

.field private chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingCurvesOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

.field private currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingTime;",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingTimeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

.field private drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;",
            "Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$DrivetrainLossesOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

.field private maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

.field private roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;",
            "Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$RoadLoadForceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

.field private vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAuxiliaryDrainAtTempIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private ensureAuxiliaryDrainAtTimeIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private getAuxiliaryDrainAtTempFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 35
    .line 36
    return-object v0
.end method

.method private getAuxiliaryDrainAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    and-int/2addr v2, v3

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 34
    .line 35
    return-object v0
.end method

.method private getBatteryLossesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;",
            "Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$BatteryLossesOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getChargingCurvesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingCurvesOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getCurrentChargingTimeFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingTime;",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$ChargingTimeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDrivetrainLossesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;",
            "Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$DrivetrainLossesOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getMaxRegenPowerFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getRoadLoadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;",
            "Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$RoadLoadForceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private getVehicleInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 28
    .line 29
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$400()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTempFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAuxiliaryDrainAtTemp(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
            ">;)",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addAllAuxiliaryDrainAtTime(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;",
            ">;)",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTemp(ILcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTemp(ILcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTemp(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTemp(Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTempBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTempFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    return-object v0
.end method

.method public addAuxiliaryDrainAtTempBuilder(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTempFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    return-object p1
.end method

.method public addAuxiliaryDrainAtTime(ILcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTime(ILcom/google/android/projection/proto/EnergyModel$DrainAtTime;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTime(Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTime(Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAuxiliaryDrainAtTimeBuilder()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;

    return-object v0
.end method

.method public addAuxiliaryDrainAtTimeBuilder(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/EnergyModel$1;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$602(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$602(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$702(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$702(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$802(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$802(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 13
    :goto_2
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$902(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$902(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 16
    :goto_3
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 17
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1002(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    goto :goto_4

    .line 18
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1002(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 19
    :goto_4
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    .line 20
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 22
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 23
    :cond_5
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1102(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Ljava/util/List;)Ljava/util/List;

    goto :goto_5

    .line 24
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1102(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Ljava/util/List;)Ljava/util/List;

    .line 25
    :goto_5
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_8

    .line 26
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 28
    iget v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 29
    :cond_7
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1202(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Ljava/util/List;)Ljava/util/List;

    goto :goto_6

    .line 30
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1202(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Ljava/util/List;)Ljava/util/List;

    .line 31
    :goto_6
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_9

    .line 32
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1302(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    goto :goto_7

    .line 33
    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1302(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 34
    :goto_7
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_a

    .line 35
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1402(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    goto :goto_8

    .line 36
    :cond_a
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    invoke-static {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1402(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 37
    :goto_8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 9
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 11
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    goto :goto_1

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 13
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 15
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    goto :goto_2

    .line 16
    :cond_2
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 17
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 19
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    goto :goto_3

    .line 20
    :cond_3
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 21
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22
    :goto_3
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    .line 23
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    goto :goto_4

    .line 24
    :cond_4
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 25
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 26
    :goto_4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 28
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    goto :goto_5

    .line 29
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 30
    :goto_5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 32
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    goto :goto_6

    .line 33
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 34
    :goto_6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_7

    .line 35
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    goto :goto_7

    .line 36
    :cond_7
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 37
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 38
    :goto_7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_8

    .line 39
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    goto :goto_8

    .line 40
    :cond_8
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 41
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_8
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clear()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuxiliaryDrainAtTemp()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x3

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clearAuxiliaryDrainAtTime()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x2

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object p0
.end method

.method public clearBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearChargingCurves()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRoadLoad()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clearVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 15
    .line 16
    :goto_0
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 7
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->clone()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuxiliaryDrainAtTemp(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    .line 19
    .line 20
    return-object p1
.end method

.method public getAuxiliaryDrainAtTempBuilder(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTempFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;

    return-object p1
.end method

.method public getAuxiliaryDrainAtTempBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTempFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuxiliaryDrainAtTempCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getAuxiliaryDrainAtTempList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAuxiliaryDrainAtTempOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getAuxiliaryDrainAtTempOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAuxiliaryDrainAtTime(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    .line 19
    .line 20
    return-object p1
.end method

.method public getAuxiliaryDrainAtTimeBuilder(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;

    return-object p1
.end method

.method public getAuxiliaryDrainAtTimeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuxiliaryDrainAtTimeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getAuxiliaryDrainAtTimeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAuxiliaryDrainAtTimeOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;

    .line 19
    .line 20
    return-object p1
.end method

.method public getAuxiliaryDrainAtTimeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 19
    .line 20
    return-object v0
.end method

.method public getBatteryLossesBuilder()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getBatteryLossesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getBatteryLossesOrBuilder()Lcom/google/android/projection/proto/EnergyModel$BatteryLossesOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$BatteryLossesOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 19
    .line 20
    return-object v0
.end method

.method public getChargingCurvesBuilder()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getChargingCurvesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getChargingCurvesOrBuilder()Lcom/google/android/projection/proto/EnergyModel$ChargingCurvesOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$ChargingCurvesOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 19
    .line 20
    return-object v0
.end method

.method public getCurrentChargingTimeBuilder()Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getCurrentChargingTimeFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getCurrentChargingTimeOrBuilder()Lcom/google/android/projection/proto/EnergyModel$ChargingTimeOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$ChargingTimeOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 19
    .line 20
    return-object v0
.end method

.method public getDrivetrainLossesBuilder()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getDrivetrainLossesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getDrivetrainLossesOrBuilder()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLossesOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLossesOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 19
    .line 20
    return-object v0
.end method

.method public getMaxRegenPowerBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getMaxRegenPowerFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getMaxRegenPowerOrBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 19
    .line 20
    return-object v0
.end method

.method public getRoadLoadBuilder()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getRoadLoadFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getRoadLoadOrBuilder()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForceOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForceOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 19
    .line 20
    return-object v0
.end method

.method public getVehicleInfoBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getVehicleInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 13
    .line 14
    return-object v0
.end method

.method public getVehicleInfoOrBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    return-object v0
.end method

.method public hasBatteryLosses()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasChargingCurves()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasCurrentChargingTime()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasDrivetrainLosses()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasMaxRegenPower()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasRoadLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasVehicleInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    .line 6
    .line 7
    const-class v2, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeBatteryLosses(Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeChargingCurves(Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeCurrentChargingTime(Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeDrivetrainLosses(Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasVehicleInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeVehicleInfo(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasRoadLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeRoadLoad(Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasDrivetrainLosses()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeDrivetrainLosses(Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasMaxRegenPower()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeMaxRegenPower(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasBatteryLosses()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeBatteryLosses(Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 22
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1100(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 23
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1100(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 25
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    goto :goto_0

    .line 26
    :cond_6
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 27
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1100(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    .line 29
    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1100(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 30
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 32
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 33
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1100(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 34
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 35
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTimeFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1100(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 38
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_c

    .line 39
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1200(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 40
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1200(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 42
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    goto :goto_3

    .line 43
    :cond_b
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 44
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1200(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_4

    .line 46
    :cond_c
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1200(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 47
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 48
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 49
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 50
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1200(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 51
    iget v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->bitField0_:I

    .line 52
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 53
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->getAuxiliaryDrainAtTempFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_d
    iput-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 54
    :cond_e
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1200(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 55
    :cond_f
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasChargingCurves()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeChargingCurves(Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 57
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasCurrentChargingTime()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 58
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeCurrentChargingTime(Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 59
    :cond_11
    invoke-static {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1700(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->access$1800()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    .line 66
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeMaxRegenPower(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public mergeRoadLoad(Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeVehicleInfo(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->newBuilder(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 31
    .line 32
    .line 33
    :goto_1
    return-object p0
.end method

.method public removeAuxiliaryDrainAtTemp(I)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public removeAuxiliaryDrainAtTime(I)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0
.end method

.method public setAuxiliaryDrainAtTemp(ILcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAuxiliaryDrainAtTemp(ILcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTempBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTempIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAuxiliaryDrainAtTime(ILcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAuxiliaryDrainAtTime(ILcom/google/android/projection/proto/EnergyModel$DrainAtTime;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTimeBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->ensureAuxiliaryDrainAtTimeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBatteryLosses(Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBatteryLosses(Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChargingCurves(Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setChargingCurves(Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurvesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCurrentChargingTime(Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCurrentChargingTime(Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTimeBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDrivetrainLosses(Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDrivetrainLosses(Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLossesBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxRegenPower(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMaxRegenPower(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPowerBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRoadLoad(Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRoadLoad(Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoadBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVehicleInfo(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setVehicleInfo(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method
