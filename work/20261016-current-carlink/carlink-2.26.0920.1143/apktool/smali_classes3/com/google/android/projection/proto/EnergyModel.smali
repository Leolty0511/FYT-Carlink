.class public final Lcom/google/android/projection/proto/EnergyModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/EnergyModel$ChargingTime;,
        Lcom/google/android/projection/proto/EnergyModel$ChargingTimeOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$ChargingCurves;,
        Lcom/google/android/projection/proto/EnergyModel$ChargingCurvesOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperature;,
        Lcom/google/android/projection/proto/EnergyModel$DrainAtTemperatureOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$DrainAtTime;,
        Lcom/google/android/projection/proto/EnergyModel$DrainAtTimeOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$BatteryLosses;,
        Lcom/google/android/projection/proto/EnergyModel$BatteryLossesOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$LossAtPower;,
        Lcom/google/android/projection/proto/EnergyModel$LossAtPowerOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$LossSeriesAtSpeed;,
        Lcom/google/android/projection/proto/EnergyModel$LossSeriesAtSpeedOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$DrivetrainLosses;,
        Lcom/google/android/projection/proto/EnergyModel$DrivetrainLossesOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTime;,
        Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtTimeOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevel;,
        Lcom/google/android/projection/proto/EnergyModel$RegenerationRateAtEnergyLevelOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$MaxRegenPower;,
        Lcom/google/android/projection/proto/EnergyModel$MaxRegenPowerOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$RoadLoadForce;,
        Lcom/google/android/projection/proto/EnergyModel$RoadLoadForceOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$VehicleInfo;,
        Lcom/google/android/projection/proto/EnergyModel$VehicleInfoOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$FloatWithUncertainty;,
        Lcom/google/android/projection/proto/EnergyModel$FloatWithUncertaintyOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$IntWithUncertainty;,
        Lcom/google/android/projection/proto/EnergyModel$IntWithUncertaintyOrBuilder;,
        Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;,
        Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_energy_model_BatteryLosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_BatteryLosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_ChargingCurves_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_ChargingCurves_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_ChargingTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_ChargingTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_DrainAtTemperature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_DrainAtTemperature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_DrainAtTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_DrainAtTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_DrivetrainLosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_DrivetrainLosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_FloatWithUncertainty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_FloatWithUncertainty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_IntWithUncertainty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_IntWithUncertainty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_LossAtPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_LossAtPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_LossSeriesAtSpeed_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_LossSeriesAtSpeed_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_MaxRegenPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_MaxRegenPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_RegenerationRateAtEnergyLevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_RegenerationRateAtEnergyLevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_RegenerationRateAtTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_RegenerationRateAtTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_RoadLoadForce_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_RoadLoadForce_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_VehicleEnergyModelData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_VehicleEnergyModelData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_energy_model_VehicleInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_energy_model_VehicleInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v0, "\n\u0012energy_model.proto\u0012\u000cenergy_model\"\u0090\u0004\n\u0016VehicleEnergyModelData\u0012/\n\u000cvehicle_info\u0018\u0001 \u0001(\u000b2\u0019.energy_model.VehicleInfo\u0012.\n\troad_load\u0018\u0002 \u0001(\u000b2\u001b.energy_model.RoadLoadForce\u00129\n\u0011drivetrain_losses\u0018\u0003 \u0001(\u000b2\u001e.energy_model.DrivetrainLosses\u00124\n\u000fmax_regen_power\u0018\u0004 \u0001(\u000b2\u001b.energy_model.MaxRegenPower\u00123\n\u000ebattery_losses\u0018\u0005 \u0001(\u000b2\u001b.energy_model.BatteryLosses\u0012:\n\u0017auxiliary_drain_at_time\u0018\u0006 \u0003(\u000b2\u0019.energy_model.DrainAtTime\u0012A\n\u0017auxiliary_drain_at_temp\u0018\u0007 \u0003(\u000b2 .energy_model.DrainAtTemperature\u00125\n\u000fcharging_curves\u0018\u0008 \u0001(\u000b2\u001c.energy_model.ChargingCurves\u00129\n\u0015current_charging_time\u0018\t \u0001(\u000b2\u001a.energy_model.ChargingTime\">\n\u0012IntWithUncertainty\u0012\u000c\n\u0004mean\u0018\u0001 \u0001(\u0005\u0012\u001a\n\u0012standard_deviation\u0018\u0002 \u0001(\u0002\"@\n\u0014FloatWithUncertainty\u0012\u000c\n\u0004mean\u0018\u0001 \u0001(\u0002\u0012\u001a\n\u0012standard_deviation\u0018\u0002 \u0001(\u0002\"\u00d3\u0004\n\u000bVehicleInfo\u00128\n\u000emass_kilograms\u0018\u0002 \u0001(\u000b2 .energy_model.IntWithUncertainty\u0012:\n\u0010battery_level_wh\u0018\u0003 \u0001(\u000b2 .energy_model.IntWithUncertainty\u0012=\n\u0013battery_capacity_wh\u0018\u0004 \u0001(\u000b2 .energy_model.IntWithUncertainty\u00129\n\u000bhvac_status\u0018\u0005 \u0001(\u000e2$.energy_model.VehicleInfo.HvacStatus\u0012\u001d\n\u0015reference_air_density\u0018\u0006 \u0001(\u0002\u0012\u001d\n\u0015external_temp_celsius\u0018\u0007 \u0001(\u0002\u0012#\n\u0016peak_motor_power_watts\u0018\u0008 \u0001(\rH\u0000\u0088\u0001\u0001\u0012(\n\u001bmaximum_charging_rate_watts\u0018\t \u0001(\rH\u0001\u0088\u0001\u0001\u0012\u001f\n\u0012heat_pump_equipped\u0018\n \u0001(\u0008H\u0002\u0088\u0001\u0001\"N\n\nHvacStatus\u0012\u0017\n\u0013UNKNOWN_HVAC_STATUS\u0010\u0000\u0012\u0013\n\u000fOFF_HVAC_STATUS\u0010\u0001\u0012\u0012\n\u000eON_HVAC_STATUS\u0010\u0002B\u0019\n\u0017_peak_motor_power_wattsB\u001e\n\u001c_maximum_charging_rate_wattsB\u0015\n\u0013_heat_pump_equippedJ\u0004\u0008\u0001\u0010\u0002\"\u00b0\u0001\n\rRoadLoadForce\u00124\n\u0008constant\u0018\u0001 \u0001(\u000b2\".energy_model.FloatWithUncertainty\u00122\n\u0006linear\u0018\u0002 \u0001(\u000b2\".energy_model.FloatWithUncertainty\u00125\n\tquadratic\u0018\u0003 \u0001(\u000b2\".energy_model.FloatWithUncertainty\"\u00b0\u0001\n\rMaxRegenPower\u0012V\n!regeneration_rate_at_energy_level\u0018\u0001 \u0003(\u000b2+.energy_model.RegenerationRateAtEnergyLevel\u0012G\n\u0019regeneration_rate_at_time\u0018\u0002 \u0003(\u000b2$.energy_model.RegenerationRateAtTime\"Y\n\u001dRegenerationRateAtEnergyLevel\u0012\u0017\n\u000fenergy_level_wh\u0018\u0001 \u0001(\u0005\u0012\u001f\n\u0017regeneration_rate_watts\u0018\u0002 \u0001(\r\"T\n\u0016RegenerationRateAtTime\u0012\u0019\n\u0011relative_time_sec\u0018\u0001 \u0001(\u0005\u0012\u001f\n\u0017regeneration_rate_watts\u0018\u0002 \u0001(\r\"v\n\u0010DrivetrainLosses\u0012>\n\u0015drivetrain_power_loss\u0018\u0007 \u0003(\u000b2\u001f.energy_model.LossSeriesAtSpeedJ\u0004\u0008\u0001\u0010\u0002J\u0004\u0008\u0002\u0010\u0003J\u0004\u0008\u0003\u0010\u0004J\u0004\u0008\u0004\u0010\u0005J\u0004\u0008\u0005\u0010\u0006J\u0004\u0008\u0006\u0010\u0007\"f\n\u0011LossSeriesAtSpeed\u0012\u001f\n\u0017speed_meters_per_second\u0018\u0001 \u0001(\u0002\u00120\n\rloss_at_power\u0018\u0002 \u0003(\u000b2\u0019.energy_model.LossAtPower\"X\n\u000bLossAtPower\u0012\u0013\n\u000bpower_watts\u0018\u0001 \u0001(\u0011\u00124\n\nloss_watts\u0018\u0002 \u0001(\u000b2 .energy_model.IntWithUncertainty\"X\n\rBatteryLosses\u00125\n\u0012battery_power_loss\u0018\u0004 \u0003(\u000b2\u0019.energy_model.LossAtPowerJ\u0004\u0008\u0001\u0010\u0002J\u0004\u0008\u0002\u0010\u0003J\u0004\u0008\u0003\u0010\u0004\"e\n\u000bDrainAtTime\u0012\u0019\n\u0011relative_time_sec\u0018\u0001 \u0001(\u0005\u00125\n\u000bdrain_watts\u0018\u0003 \u0001(\u000b2 .energy_model.IntWithUncertaintyJ\u0004\u0008\u0002\u0010\u0003\"\u00ef\u0001\n\u0012DrainAtTemperature\u0012\u0014\n\u000ctemp_celsius\u0018\u0001 \u0001(\u0002\u0012:\n\u0010hvac_drain_watts\u0018\u0002 \u0001(\u000b2 .energy_model.IntWithUncertainty\u0012J\n battery_conditioning_drain_watts\u0018\u0003 \u0001(\u000b2 .energy_model.IntWithUncertainty\u0012;\n\u0011total_drain_watts\u0018\u0004 \u0001(\u000b2 .energy_model.IntWithUncertainty\"\u00c6\u0002\n\u000eChargingCurves\u0012R\n\u0017charging_curve_at_power\u0018\u0001 \u0003(\u000b21.energy_model.ChargingCurves.ChargingCurveAtPower\u001a\u00df\u0001\n\u0014ChargingCurveAtPower\u0012\u0019\n\u0011input_power_watts\u0018\u0001 \u0001(\u0005\u0012a\n\u0014time_to_full_battery\u0018\u0002 \u0003(\u000b2C.energy_model.ChargingCurves.ChargingCurveAtPower.TimeToFullBattery\u001aI\n\u0011TimeToFullBattery\u0012\u0019\n\u0011energy_to_full_wh\u0018\u0001 \u0001(\u0005\u0012\u0019\n\u0011time_to_full_secs\u0018\u0002 \u0001(\u0005\"n\n\u000cChargingTime\u0012\u001f\n\u0017target_battery_level_wh\u0018\u0001 \u0001(\u0005\u0012=\n\u0013time_remaining_secs\u0018\u0002 \u0001(\u000b2 .energy_model.IntWithUncertaintyB4\n#com.google.android.projection.protoB\u000bEnergyModelH\u0003b\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_VehicleEnergyModelData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 33
    .line 34
    const-string v3, "VehicleInfo"

    .line 35
    .line 36
    const-string v4, "RoadLoad"

    .line 37
    .line 38
    const-string v5, "DrivetrainLosses"

    .line 39
    .line 40
    const-string v6, "MaxRegenPower"

    .line 41
    .line 42
    const-string v7, "BatteryLosses"

    .line 43
    .line 44
    const-string v8, "AuxiliaryDrainAtTime"

    .line 45
    .line 46
    const-string v9, "AuxiliaryDrainAtTemp"

    .line 47
    .line 48
    const-string v10, "ChargingCurves"

    .line 49
    .line 50
    const-string v11, "CurrentChargingTime"

    .line 51
    .line 52
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_VehicleEnergyModelData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 60
    .line 61
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 75
    .line 76
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_IntWithUncertainty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 77
    .line 78
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 79
    .line 80
    const-string v3, "Mean"

    .line 81
    .line 82
    const-string v4, "StandardDeviation"

    .line 83
    .line 84
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_IntWithUncertainty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v2, 0x2

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 107
    .line 108
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_FloatWithUncertainty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 109
    .line 110
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 111
    .line 112
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_FloatWithUncertainty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 120
    .line 121
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const/4 v2, 0x3

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 135
    .line 136
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_VehicleInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 137
    .line 138
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 139
    .line 140
    const-string v3, "MassKilograms"

    .line 141
    .line 142
    const-string v4, "BatteryLevelWh"

    .line 143
    .line 144
    const-string v5, "BatteryCapacityWh"

    .line 145
    .line 146
    const-string v6, "HvacStatus"

    .line 147
    .line 148
    const-string v7, "ReferenceAirDensity"

    .line 149
    .line 150
    const-string v8, "ExternalTempCelsius"

    .line 151
    .line 152
    const-string v9, "PeakMotorPowerWatts"

    .line 153
    .line 154
    const-string v10, "MaximumChargingRateWatts"

    .line 155
    .line 156
    const-string v11, "HeatPumpEquipped"

    .line 157
    .line 158
    const-string v12, "PeakMotorPowerWatts"

    .line 159
    .line 160
    const-string v13, "MaximumChargingRateWatts"

    .line 161
    .line 162
    const-string v14, "HeatPumpEquipped"

    .line 163
    .line 164
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_VehicleInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 172
    .line 173
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const/4 v2, 0x4

    .line 182
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 187
    .line 188
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RoadLoadForce_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 189
    .line 190
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 191
    .line 192
    const-string v3, "Linear"

    .line 193
    .line 194
    const-string v4, "Quadratic"

    .line 195
    .line 196
    const-string v5, "Constant"

    .line 197
    .line 198
    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RoadLoadForce_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 206
    .line 207
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const/4 v2, 0x5

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 221
    .line 222
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_MaxRegenPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 223
    .line 224
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 225
    .line 226
    const-string v3, "RegenerationRateAtEnergyLevel"

    .line 227
    .line 228
    const-string v4, "RegenerationRateAtTime"

    .line 229
    .line 230
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_MaxRegenPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 238
    .line 239
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const/4 v2, 0x6

    .line 248
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 253
    .line 254
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RegenerationRateAtEnergyLevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 255
    .line 256
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 257
    .line 258
    const-string v3, "EnergyLevelWh"

    .line 259
    .line 260
    const-string v4, "RegenerationRateWatts"

    .line 261
    .line 262
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RegenerationRateAtEnergyLevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 270
    .line 271
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    const/4 v2, 0x7

    .line 280
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 285
    .line 286
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RegenerationRateAtTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 287
    .line 288
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 289
    .line 290
    const-string v3, "RelativeTimeSec"

    .line 291
    .line 292
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RegenerationRateAtTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 300
    .line 301
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    const/16 v2, 0x8

    .line 310
    .line 311
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 316
    .line 317
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrivetrainLosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 318
    .line 319
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 320
    .line 321
    const-string v4, "DrivetrainPowerLoss"

    .line 322
    .line 323
    filled-new-array {v4}, [Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrivetrainLosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 331
    .line 332
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const/16 v2, 0x9

    .line 341
    .line 342
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 347
    .line 348
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_LossSeriesAtSpeed_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 349
    .line 350
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 351
    .line 352
    const-string v4, "SpeedMetersPerSecond"

    .line 353
    .line 354
    const-string v5, "LossAtPower"

    .line 355
    .line 356
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_LossSeriesAtSpeed_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 364
    .line 365
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    const/16 v2, 0xa

    .line 374
    .line 375
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 380
    .line 381
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_LossAtPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 382
    .line 383
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 384
    .line 385
    const-string v4, "PowerWatts"

    .line 386
    .line 387
    const-string v5, "LossWatts"

    .line 388
    .line 389
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_LossAtPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 397
    .line 398
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    const/16 v2, 0xb

    .line 407
    .line 408
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 413
    .line 414
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_BatteryLosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 415
    .line 416
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 417
    .line 418
    const-string v4, "BatteryPowerLoss"

    .line 419
    .line 420
    filled-new-array {v4}, [Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-direct {v2, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_BatteryLosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 428
    .line 429
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    const/16 v2, 0xc

    .line 438
    .line 439
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 444
    .line 445
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrainAtTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 446
    .line 447
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 448
    .line 449
    const-string v4, "DrainWatts"

    .line 450
    .line 451
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrainAtTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 459
    .line 460
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    const/16 v2, 0xd

    .line 469
    .line 470
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 475
    .line 476
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrainAtTemperature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 477
    .line 478
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 479
    .line 480
    const-string v3, "BatteryConditioningDrainWatts"

    .line 481
    .line 482
    const-string v4, "TotalDrainWatts"

    .line 483
    .line 484
    const-string v5, "TempCelsius"

    .line 485
    .line 486
    const-string v6, "HvacDrainWatts"

    .line 487
    .line 488
    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrainAtTemperature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 496
    .line 497
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    const/16 v2, 0xe

    .line 506
    .line 507
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 512
    .line 513
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 514
    .line 515
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 516
    .line 517
    const-string v3, "ChargingCurveAtPower"

    .line 518
    .line 519
    filled-new-array {v3}, [Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 527
    .line 528
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 537
    .line 538
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 539
    .line 540
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 541
    .line 542
    const-string v3, "InputPowerWatts"

    .line 543
    .line 544
    const-string v4, "TimeToFullBattery"

    .line 545
    .line 546
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    sput-object v2, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 554
    .line 555
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 564
    .line 565
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 566
    .line 567
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 568
    .line 569
    const-string v2, "EnergyToFullWh"

    .line 570
    .line 571
    const-string v3, "TimeToFullSecs"

    .line 572
    .line 573
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    sput-object v1, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 581
    .line 582
    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    const/16 v1, 0xf

    .line 591
    .line 592
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 597
    .line 598
    sput-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 599
    .line 600
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 601
    .line 602
    const-string v2, "TargetBatteryLevelWh"

    .line 603
    .line 604
    const-string v3, "TimeRemainingSecs"

    .line 605
    .line 606
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    sput-object v1, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 614
    .line 615
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_VehicleEnergyModelData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_VehicleEnergyModelData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$10800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrivetrainLosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$10900()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrivetrainLosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$11900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_LossSeriesAtSpeed_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$12000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_LossSeriesAtSpeed_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$13100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_LossAtPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$13200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_LossAtPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$14200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_BatteryLosses_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$14300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_BatteryLosses_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$15300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrainAtTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$15400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrainAtTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$16400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrainAtTemperature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$16500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_DrainAtTemperature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$17700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$17800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$17900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$18000()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$18100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$18200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingCurves_ChargingCurveAtPower_TimeToFullBattery_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$2000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_IntWithUncertainty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$2100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_IntWithUncertainty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$21100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$21200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_ChargingTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$3100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_FloatWithUncertainty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$3200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_FloatWithUncertainty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$4200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_VehicleInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$4300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_VehicleInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$6100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RoadLoadForce_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$6200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RoadLoadForce_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$7300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_MaxRegenPower_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$7400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_MaxRegenPower_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$8600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RegenerationRateAtEnergyLevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$8700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RegenerationRateAtEnergyLevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static synthetic access$9700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RegenerationRateAtTime_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static synthetic access$9800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->internal_static_energy_model_RegenerationRateAtTime_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/EnergyModel;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/EnergyModel;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    return-void
.end method
