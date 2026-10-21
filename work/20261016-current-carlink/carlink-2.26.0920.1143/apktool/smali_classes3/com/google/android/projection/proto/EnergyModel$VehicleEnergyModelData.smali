.class public final Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/EnergyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VehicleEnergyModelData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    }
.end annotation


# static fields
.field public static final AUXILIARY_DRAIN_AT_TEMP_FIELD_NUMBER:I = 0x7

.field public static final AUXILIARY_DRAIN_AT_TIME_FIELD_NUMBER:I = 0x6

.field public static final BATTERY_LOSSES_FIELD_NUMBER:I = 0x5

.field public static final CHARGING_CURVES_FIELD_NUMBER:I = 0x8

.field public static final CURRENT_CHARGING_TIME_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

.field public static final DRIVETRAIN_LOSSES_FIELD_NUMBER:I = 0x3

.field public static final MAX_REGEN_POWER_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROAD_LOAD_FIELD_NUMBER:I = 0x2

.field public static final VEHICLE_INFO_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private auxiliaryDrainAtTemp_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;",
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

.field private batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

.field private chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

.field private currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

.field private drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

.field private maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

.field private memoizedIsInitialized:B

.field private roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

.field private vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_16

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v3, v5, :cond_11

    const/16 v5, 0x12

    if-eq v3, v5, :cond_f

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_d

    const/16 v5, 0x22

    if-eq v3, v5, :cond_b

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_9

    const/16 v5, 0x32

    if-eq v3, v5, :cond_7

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x42

    if-eq v3, v5, :cond_3

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;

    move-result-object v6

    .line 16
    :cond_2
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    if-eqz v6, :cond_0

    .line 17
    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;

    .line 18
    invoke-virtual {v6}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    goto :goto_0

    .line 19
    :cond_3
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v3}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;

    move-result-object v6

    .line 21
    :cond_4
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    if-eqz v6, :cond_0

    .line 22
    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;

    .line 23
    invoke-virtual {v6}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 25
    :cond_6
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 26
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    .line 27
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_8

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 29
    :cond_8
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 30
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    .line 31
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :cond_9
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    if-eqz v3, :cond_a

    .line 33
    invoke-virtual {v3}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;

    move-result-object v6

    .line 34
    :cond_a
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;

    .line 36
    invoke-virtual {v6}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    goto/16 :goto_0

    .line 37
    :cond_b
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    if-eqz v3, :cond_c

    .line 38
    invoke-virtual {v3}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    move-result-object v6

    .line 39
    :cond_c
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;

    .line 41
    invoke-virtual {v6}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    goto/16 :goto_0

    .line 42
    :cond_d
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    if-eqz v3, :cond_e

    .line 43
    invoke-virtual {v3}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;

    move-result-object v6

    .line 44
    :cond_e
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    if-eqz v6, :cond_0

    .line 45
    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;

    .line 46
    invoke-virtual {v6}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    goto/16 :goto_0

    .line 47
    :cond_f
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    if-eqz v3, :cond_10

    .line 48
    invoke-virtual {v3}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;

    move-result-object v6

    .line 49
    :cond_10
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;

    .line 51
    invoke-virtual {v6}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    goto/16 :goto_0

    .line 52
    :cond_11
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    if-eqz v3, :cond_12

    .line 53
    invoke-virtual {v3}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    move-result-object v6

    .line 54
    :cond_12
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    if-eqz v6, :cond_0

    .line 55
    invoke-virtual {v6, v3}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;

    .line 56
    invoke-virtual {v6}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo$Builder;->buildPartial()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_13
    :goto_1
    move v1, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 57
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 58
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 59
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_14

    .line 60
    iget-object p2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_15

    .line 61
    iget-object p2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 62
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 64
    throw p1

    :cond_16
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_17

    .line 65
    iget-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_18

    .line 66
    iget-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 67
    :cond_18
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 68
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/EnergyModel$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;)Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1102(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$1302(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;)Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    return-object p1
.end method

.method public static synthetic access$1402(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$ChargingTime;)Lcom/google/android/projection/proto/EnergyModel$ChargingTime;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    return-object p1
.end method

.method public static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$1700(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static synthetic access$1800()Lcom/google/protobuf/Parser;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$602(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;)Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;)Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    return-object p1
.end method

.method public static synthetic access$802(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;)Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    return-object p1
.end method

.method public static synthetic access$902(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;)Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasVehicleInfo()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasVehicleInfo()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    return v3

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasVehicleInfo()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    return v3

    .line 49
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasRoadLoad()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasRoadLoad()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v1, v2, :cond_4

    .line 58
    .line 59
    return v3

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasRoadLoad()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    return v3

    .line 81
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasDrivetrainLosses()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasDrivetrainLosses()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eq v1, v2, :cond_6

    .line 90
    .line 91
    return v3

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasDrivetrainLosses()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    return v3

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasMaxRegenPower()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasMaxRegenPower()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eq v1, v2, :cond_8

    .line 122
    .line 123
    return v3

    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasMaxRegenPower()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_9

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    return v3

    .line 145
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasBatteryLosses()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasBatteryLosses()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eq v1, v2, :cond_a

    .line 154
    .line 155
    return v3

    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasBatteryLosses()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_b

    .line 175
    .line 176
    return v3

    .line 177
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getAuxiliaryDrainAtTimeList()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getAuxiliaryDrainAtTimeList()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_c

    .line 190
    .line 191
    return v3

    .line 192
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getAuxiliaryDrainAtTempList()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getAuxiliaryDrainAtTempList()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_d

    .line 205
    .line 206
    return v3

    .line 207
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasChargingCurves()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasChargingCurves()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eq v1, v2, :cond_e

    .line 216
    .line 217
    return v3

    .line 218
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasChargingCurves()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_f

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-nez v1, :cond_f

    .line 237
    .line 238
    return v3

    .line 239
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasCurrentChargingTime()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasCurrentChargingTime()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eq v1, v2, :cond_10

    .line 248
    .line 249
    return v3

    .line 250
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasCurrentChargingTime()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_11

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-nez v1, :cond_11

    .line 269
    .line 270
    return v3

    .line 271
    :cond_11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 272
    .line 273
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 274
    .line 275
    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-nez p1, :cond_12

    .line 280
    .line 281
    return v3

    .line 282
    :cond_12
    return v0
.end method

.method public getAuxiliaryDrainAtTemp(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;

    return-object p1
.end method

.method public getAuxiliaryDrainAtTempCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    return-object v0
.end method

.method public getAuxiliaryDrainAtTempOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;

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

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    return-object v0
.end method

.method public getAuxiliaryDrainAtTime(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;

    return-object p1
.end method

.method public getAuxiliaryDrainAtTimeCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    return-object v0
.end method

.method public getAuxiliaryDrainAtTimeOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;

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

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    return-object v0
.end method

.method public getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBatteryLossesOrBuilder()Lcom/google/android/projection/proto/EnergyModel$BatteryLossesOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    move-result-object v0

    return-object v0
.end method

.method public getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChargingCurvesOrBuilder()Lcom/google/android/projection/proto/EnergyModel$ChargingCurvesOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentChargingTimeOrBuilder()Lcom/google/android/projection/proto/EnergyModel$ChargingTimeOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDefaultInstanceForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v0

    return-object v0
.end method

.method public getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDrivetrainLossesOrBuilder()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLossesOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxRegenPowerOrBuilder()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoadLoadOrBuilder()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForceOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v0, v2

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    add-int/2addr v0, v2

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/2addr v0, v2

    .line 66
    :cond_4
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    const/4 v2, 0x5

    .line 71
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v0, v2

    .line 80
    :cond_5
    move v2, v1

    .line 81
    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v2, v3, :cond_6

    .line 88
    .line 89
    iget-object v3, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 96
    .line 97
    const/4 v4, 0x6

    .line 98
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    add-int/2addr v0, v3

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-ge v1, v2, :cond_7

    .line 113
    .line 114
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 121
    .line 122
    const/4 v3, 0x7

    .line 123
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    add-int/2addr v0, v2

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 132
    .line 133
    if-eqz v1, :cond_8

    .line 134
    .line 135
    const/16 v1, 0x8

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    add-int/2addr v0, v1

    .line 146
    :cond_8
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 147
    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    const/16 v1, 0x9

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/2addr v0, v1

    .line 161
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    add-int/2addr v1, v0

    .line 168
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    .line 169
    .line 170
    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVehicleInfoOrBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasBatteryLosses()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChargingCurves()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCurrentChargingTime()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDrivetrainLosses()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxRegenPower()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRoadLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVehicleInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit16 v0, v0, 0x30b

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasVehicleInfo()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x25

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/16 v3, 0x35

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasRoadLoad()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x25

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    const/16 v3, 0x35

    .line 50
    .line 51
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasDrivetrainLosses()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    const/16 v1, 0x25

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    const/16 v3, 0x35

    .line 74
    .line 75
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasMaxRegenPower()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    const/16 v1, 0x25

    .line 95
    .line 96
    const/4 v2, 0x4

    .line 97
    const/16 v3, 0x35

    .line 98
    .line 99
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/2addr v0, v1

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasBatteryLosses()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    const/16 v1, 0x25

    .line 119
    .line 120
    const/4 v2, 0x5

    .line 121
    const/16 v3, 0x35

    .line 122
    .line 123
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    add-int/2addr v0, v1

    .line 136
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getAuxiliaryDrainAtTimeCount()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-lez v1, :cond_6

    .line 141
    .line 142
    const/16 v1, 0x25

    .line 143
    .line 144
    const/4 v2, 0x6

    .line 145
    const/16 v3, 0x35

    .line 146
    .line 147
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getAuxiliaryDrainAtTimeList()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getAuxiliaryDrainAtTempCount()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-lez v1, :cond_7

    .line 165
    .line 166
    const/16 v1, 0x25

    .line 167
    .line 168
    const/4 v2, 0x7

    .line 169
    const/16 v3, 0x35

    .line 170
    .line 171
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getAuxiliaryDrainAtTempList()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    add-int/2addr v0, v1

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasChargingCurves()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_8

    .line 189
    .line 190
    const/16 v1, 0x25

    .line 191
    .line 192
    const/16 v2, 0x8

    .line 193
    .line 194
    const/16 v3, 0x35

    .line 195
    .line 196
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;->hashCode()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    add-int/2addr v0, v1

    .line 209
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->hasCurrentChargingTime()Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_9

    .line 214
    .line 215
    const/16 v1, 0x25

    .line 216
    .line 217
    const/16 v2, 0x9

    .line 218
    .line 219
    const/16 v3, 0x35

    .line 220
    .line 221
    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/google/android/projection/proto/EnergyModel$ChargingTime;->hashCode()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    add-int/2addr v0, v1

    .line 234
    :cond_9
    mul-int/lit8 v0, v0, 0x1d

    .line 235
    .line 236
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 237
    .line 238
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    add-int/2addr v1, v0

    .line 243
    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    .line 244
    .line 245
    return v1
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
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->newBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/EnergyModel$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->newBuilderForType()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    invoke-direct {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;-><init>(Lcom/google/android/projection/proto/EnergyModel$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->mergeFrom(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->toBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->vehicleInfo_:Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getVehicleInfo()Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->roadLoad_:Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getRoadLoad()Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->drivetrainLosses_:Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDrivetrainLosses()Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->maxRegenPower_:Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getMaxRegenPower()Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->batteryLosses_:Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getBatteryLosses()Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    const/4 v0, 0x0

    .line 62
    move v1, v0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ge v1, v2, :cond_5

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTime_:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/google/protobuf/MessageLite;

    .line 78
    .line 79
    const/4 v3, 0x6

    .line 80
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-ge v0, v1, :cond_6

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->auxiliaryDrainAtTemp_:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 101
    .line 102
    const/4 v2, 0x7

    .line 103
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->chargingCurves_:Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    const/16 v0, 0x8

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getChargingCurves()Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v0, p0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->currentChargingTime_:Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    const/16 v0, 0x9

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getCurrentChargingTime()Lcom/google/android/projection/proto/EnergyModel$ChargingTime;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 133
    .line 134
    .line 135
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method
