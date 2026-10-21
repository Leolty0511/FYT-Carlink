.class public final Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$SensorBatchOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos$SensorBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;",
        ">;",
        "Lcom/google/android/projection/proto/Protos$SensorBatchOrBuilder;"
    }
.end annotation


# instance fields
.field private accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData;",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;",
            "Lcom/google/android/projection/proto/Protos$AccelerometerDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private accelerometerData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$CompassData;",
            "Lcom/google/android/projection/proto/Protos$CompassData$Builder;",
            "Lcom/google/android/projection/proto/Protos$CompassDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private compassData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$CompassData;",
            ">;"
        }
    .end annotation
.end field

.field private deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData;",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private deadReckoningData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsData;",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticsData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsData;",
            ">;"
        }
    .end annotation
.end field

.field private doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$DoorData;",
            "Lcom/google/android/projection/proto/Protos$DoorData$Builder;",
            "Lcom/google/android/projection/proto/Protos$DoorDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private doorData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DoorData;",
            ">;"
        }
    .end annotation
.end field

.field private drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusData;",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private drivingStatusData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusData;",
            ">;"
        }
    .end annotation
.end field

.field private environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData;",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;",
            "Lcom/google/android/projection/proto/Protos$EnvironmentDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private environmentData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData;",
            ">;"
        }
    .end annotation
.end field

.field private fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$FuelData;",
            "Lcom/google/android/projection/proto/Protos$FuelData$Builder;",
            "Lcom/google/android/projection/proto/Protos$FuelDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private fuelData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$FuelData;",
            ">;"
        }
    .end annotation
.end field

.field private gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$GearData;",
            "Lcom/google/android/projection/proto/Protos$GearData$Builder;",
            "Lcom/google/android/projection/proto/Protos$GearDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gearData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GearData;",
            ">;"
        }
    .end annotation
.end field

.field private gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteData;",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gpsSatelliteData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteData;",
            ">;"
        }
    .end annotation
.end field

.field private gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData;",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;",
            "Lcom/google/android/projection/proto/Protos$GyroscopeDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private gyroscopeData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData;",
            ">;"
        }
    .end annotation
.end field

.field private hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HvacData;",
            "Lcom/google/android/projection/proto/Protos$HvacData$Builder;",
            "Lcom/google/android/projection/proto/Protos$HvacDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private hvacData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$HvacData;",
            ">;"
        }
    .end annotation
.end field

.field private lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$LightData;",
            "Lcom/google/android/projection/proto/Protos$LightData$Builder;",
            "Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lightData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$LightData;",
            ">;"
        }
    .end annotation
.end field

.field private locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$LocationData;",
            "Lcom/google/android/projection/proto/Protos$LocationData$Builder;",
            "Lcom/google/android/projection/proto/Protos$LocationDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private locationData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$LocationData;",
            ">;"
        }
    .end annotation
.end field

.field private nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NightModeData;",
            "Lcom/google/android/projection/proto/Protos$NightModeData$Builder;",
            "Lcom/google/android/projection/proto/Protos$NightModeDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private nightModeData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NightModeData;",
            ">;"
        }
    .end annotation
.end field

.field private odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$OdometerData;",
            "Lcom/google/android/projection/proto/Protos$OdometerData$Builder;",
            "Lcom/google/android/projection/proto/Protos$OdometerDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private odometerData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$OdometerData;",
            ">;"
        }
    .end annotation
.end field

.field private parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData;",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private parkingBrakeData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData;",
            ">;"
        }
    .end annotation
.end field

.field private passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$PassengerData;",
            "Lcom/google/android/projection/proto/Protos$PassengerData$Builder;",
            "Lcom/google/android/projection/proto/Protos$PassengerDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private passengerData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$PassengerData;",
            ">;"
        }
    .end annotation
.end field

.field private rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RpmData;",
            "Lcom/google/android/projection/proto/Protos$RpmData$Builder;",
            "Lcom/google/android/projection/proto/Protos$RpmDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rpmData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RpmData;",
            ">;"
        }
    .end annotation
.end field

.field private speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$SpeedData;",
            "Lcom/google/android/projection/proto/Protos$SpeedData$Builder;",
            "Lcom/google/android/projection/proto/Protos$SpeedDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private speedData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$SpeedData;",
            ">;"
        }
    .end annotation
.end field

.field private tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TirePressureData;",
            "Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;",
            "Lcom/google/android/projection/proto/Protos$TirePressureDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tirePressureData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TirePressureData;",
            ">;"
        }
    .end annotation
.end field

.field private tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TollCardData;",
            "Lcom/google/android/projection/proto/Protos$TollCardData$Builder;",
            "Lcom/google/android/projection/proto/Protos$TollCardDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private tollCardData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TollCardData;",
            ">;"
        }
    .end annotation
.end field

.field private trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TrailerData;",
            "Lcom/google/android/projection/proto/Protos$TrailerData$Builder;",
            "Lcom/google/android/projection/proto/Protos$TrailerDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private trailerData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TrailerData;",
            ">;"
        }
    .end annotation
.end field

.field private vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private vehicleEnergyModelData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAccelerometerDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureCompassDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureDeadReckoningDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureDiagnosticsDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureDoorDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureDrivingStatusDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureEnvironmentDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureFuelDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureGearDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureGpsSatelliteDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureGyroscopeDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureHvacDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureLightDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureLocationDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureNightModeDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureOdometerDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureParkingBrakeDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePassengerDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureRpmDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSpeedDataIsMutable()V
    .locals 2

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTirePressureDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTollCardDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTrailerDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureVehicleEnergyModelDataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAccelerometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData;",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;",
            "Lcom/google/android/projection/proto/Protos$AccelerometerDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getCompassDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$CompassData;",
            "Lcom/google/android/projection/proto/Protos$CompassData$Builder;",
            "Lcom/google/android/projection/proto/Protos$CompassDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getDeadReckoningDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData;",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$64700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDiagnosticsDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsData;",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getDoorDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$DoorData;",
            "Lcom/google/android/projection/proto/Protos$DoorData$Builder;",
            "Lcom/google/android/projection/proto/Protos$DoorDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getDrivingStatusDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusData;",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getEnvironmentDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData;",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;",
            "Lcom/google/android/projection/proto/Protos$EnvironmentDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getFuelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$FuelData;",
            "Lcom/google/android/projection/proto/Protos$FuelData$Builder;",
            "Lcom/google/android/projection/proto/Protos$FuelDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getGearDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$GearData;",
            "Lcom/google/android/projection/proto/Protos$GearData$Builder;",
            "Lcom/google/android/projection/proto/Protos$GearDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getGpsSatelliteDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteData;",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getGyroscopeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData;",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;",
            "Lcom/google/android/projection/proto/Protos$GyroscopeDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getHvacDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$HvacData;",
            "Lcom/google/android/projection/proto/Protos$HvacData$Builder;",
            "Lcom/google/android/projection/proto/Protos$HvacDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getLightDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$LightData;",
            "Lcom/google/android/projection/proto/Protos$LightData$Builder;",
            "Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getLocationDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$LocationData;",
            "Lcom/google/android/projection/proto/Protos$LocationData$Builder;",
            "Lcom/google/android/projection/proto/Protos$LocationDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getNightModeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$NightModeData;",
            "Lcom/google/android/projection/proto/Protos$NightModeData$Builder;",
            "Lcom/google/android/projection/proto/Protos$NightModeDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getOdometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$OdometerData;",
            "Lcom/google/android/projection/proto/Protos$OdometerData$Builder;",
            "Lcom/google/android/projection/proto/Protos$OdometerDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getParkingBrakeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData;",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getPassengerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$PassengerData;",
            "Lcom/google/android/projection/proto/Protos$PassengerData$Builder;",
            "Lcom/google/android/projection/proto/Protos$PassengerDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getRpmDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$RpmData;",
            "Lcom/google/android/projection/proto/Protos$RpmData$Builder;",
            "Lcom/google/android/projection/proto/Protos$RpmDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSpeedDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$SpeedData;",
            "Lcom/google/android/projection/proto/Protos$SpeedData$Builder;",
            "Lcom/google/android/projection/proto/Protos$SpeedDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getTirePressureDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TirePressureData;",
            "Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;",
            "Lcom/google/android/projection/proto/Protos$TirePressureDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getTollCardDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TollCardData;",
            "Lcom/google/android/projection/proto/Protos$TollCardData$Builder;",
            "Lcom/google/android/projection/proto/Protos$TollCardDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getTrailerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/Protos$TrailerData;",
            "Lcom/google/android/projection/proto/Protos$TrailerData$Builder;",
            "Lcom/google/android/projection/proto/Protos$TrailerDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getVehicleEnergyModelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    iget v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLocationDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getCompassDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getSpeedDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getRpmDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getOdometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getFuelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getParkingBrakeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGearDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDiagnosticsDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getNightModeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getEnvironmentDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getHvacDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDrivingStatusDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDeadReckoningDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getPassengerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDoorDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLightDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTirePressureDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getAccelerometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGyroscopeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGpsSatelliteDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTollCardDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getVehicleEnergyModelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTrailerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAccelerometerData(ILcom/google/android/projection/proto/Protos$AccelerometerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$AccelerometerData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$AccelerometerData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAccelerometerData(ILcom/google/android/projection/proto/Protos$AccelerometerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAccelerometerData(Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$AccelerometerData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$AccelerometerData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAccelerometerData(Lcom/google/android/projection/proto/Protos$AccelerometerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAccelerometerDataBuilder()Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getAccelerometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$AccelerometerData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AccelerometerData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;

    return-object v0
.end method

.method public addAccelerometerDataBuilder(I)Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getAccelerometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$AccelerometerData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$AccelerometerData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;

    return-object p1
.end method

.method public addAllAccelerometerData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllCompassData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$CompassData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllDeadReckoningData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllDiagnosticsData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllDoorData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$DoorData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllDrivingStatusData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllEnvironmentData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllFuelData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$FuelData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllGearData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$GearData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllGpsSatelliteData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllGyroscopeData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllHvacData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$HvacData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllLightData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$LightData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllLocationData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$LocationData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllNightModeData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NightModeData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllOdometerData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$OdometerData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllParkingBrakeData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllPassengerData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$PassengerData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllRpmData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RpmData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllSpeedData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$SpeedData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllTirePressureData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$TirePressureData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllTollCardData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$TollCardData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllTrailerData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/Protos$TrailerData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllVehicleEnergyModelData(Ljava/lang/Iterable;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;",
            ">;)",
            "Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addCompassData(ILcom/google/android/projection/proto/Protos$CompassData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$CompassData$Builder;->build()Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$CompassData$Builder;->build()Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addCompassData(ILcom/google/android/projection/proto/Protos$CompassData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addCompassData(Lcom/google/android/projection/proto/Protos$CompassData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$CompassData$Builder;->build()Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$CompassData$Builder;->build()Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addCompassData(Lcom/google/android/projection/proto/Protos$CompassData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addCompassDataBuilder()Lcom/google/android/projection/proto/Protos$CompassData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getCompassDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$CompassData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$CompassData$Builder;

    return-object v0
.end method

.method public addCompassDataBuilder(I)Lcom/google/android/projection/proto/Protos$CompassData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getCompassDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$CompassData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$CompassData$Builder;

    return-object p1
.end method

.method public addDeadReckoningData(ILcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;->build()Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;->build()Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDeadReckoningData(ILcom/google/android/projection/proto/Protos$DeadReckoningData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDeadReckoningData(Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;->build()Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;->build()Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDeadReckoningData(Lcom/google/android/projection/proto/Protos$DeadReckoningData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDeadReckoningDataBuilder()Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDeadReckoningDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DeadReckoningData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;

    return-object v0
.end method

.method public addDeadReckoningDataBuilder(I)Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDeadReckoningDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DeadReckoningData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;

    return-object p1
.end method

.method public addDiagnosticsData(ILcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;->build()Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;->build()Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDiagnosticsData(ILcom/google/android/projection/proto/Protos$DiagnosticsData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDiagnosticsData(Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;->build()Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;->build()Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDiagnosticsData(Lcom/google/android/projection/proto/Protos$DiagnosticsData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDiagnosticsDataBuilder()Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDiagnosticsDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DiagnosticsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;

    return-object v0
.end method

.method public addDiagnosticsDataBuilder(I)Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDiagnosticsDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DiagnosticsData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;

    return-object p1
.end method

.method public addDoorData(ILcom/google/android/projection/proto/Protos$DoorData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DoorData$Builder;->build()Lcom/google/android/projection/proto/Protos$DoorData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DoorData$Builder;->build()Lcom/google/android/projection/proto/Protos$DoorData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDoorData(ILcom/google/android/projection/proto/Protos$DoorData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDoorData(Lcom/google/android/projection/proto/Protos$DoorData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DoorData$Builder;->build()Lcom/google/android/projection/proto/Protos$DoorData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DoorData$Builder;->build()Lcom/google/android/projection/proto/Protos$DoorData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDoorData(Lcom/google/android/projection/proto/Protos$DoorData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDoorDataBuilder()Lcom/google/android/projection/proto/Protos$DoorData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDoorDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DoorData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$DoorData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$DoorData$Builder;

    return-object v0
.end method

.method public addDoorDataBuilder(I)Lcom/google/android/projection/proto/Protos$DoorData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDoorDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DoorData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$DoorData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DoorData$Builder;

    return-object p1
.end method

.method public addDrivingStatusData(ILcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;->build()Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;->build()Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDrivingStatusData(ILcom/google/android/projection/proto/Protos$DrivingStatusData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDrivingStatusData(Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;->build()Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;->build()Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDrivingStatusData(Lcom/google/android/projection/proto/Protos$DrivingStatusData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addDrivingStatusDataBuilder()Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDrivingStatusDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DrivingStatusData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;

    return-object v0
.end method

.method public addDrivingStatusDataBuilder(I)Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDrivingStatusDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$DrivingStatusData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;

    return-object p1
.end method

.method public addEnvironmentData(ILcom/google/android/projection/proto/Protos$EnvironmentData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;->build()Lcom/google/android/projection/proto/Protos$EnvironmentData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;->build()Lcom/google/android/projection/proto/Protos$EnvironmentData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEnvironmentData(ILcom/google/android/projection/proto/Protos$EnvironmentData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEnvironmentData(Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;->build()Lcom/google/android/projection/proto/Protos$EnvironmentData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;->build()Lcom/google/android/projection/proto/Protos$EnvironmentData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEnvironmentData(Lcom/google/android/projection/proto/Protos$EnvironmentData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEnvironmentDataBuilder()Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getEnvironmentDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$EnvironmentData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$EnvironmentData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;

    return-object v0
.end method

.method public addEnvironmentDataBuilder(I)Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getEnvironmentDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$EnvironmentData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$EnvironmentData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;

    return-object p1
.end method

.method public addFuelData(ILcom/google/android/projection/proto/Protos$FuelData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$FuelData$Builder;->build()Lcom/google/android/projection/proto/Protos$FuelData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$FuelData$Builder;->build()Lcom/google/android/projection/proto/Protos$FuelData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFuelData(ILcom/google/android/projection/proto/Protos$FuelData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFuelData(Lcom/google/android/projection/proto/Protos$FuelData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$FuelData$Builder;->build()Lcom/google/android/projection/proto/Protos$FuelData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$FuelData$Builder;->build()Lcom/google/android/projection/proto/Protos$FuelData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFuelData(Lcom/google/android/projection/proto/Protos$FuelData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFuelDataBuilder()Lcom/google/android/projection/proto/Protos$FuelData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getFuelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$FuelData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$FuelData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$FuelData$Builder;

    return-object v0
.end method

.method public addFuelDataBuilder(I)Lcom/google/android/projection/proto/Protos$FuelData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getFuelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$FuelData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$FuelData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$FuelData$Builder;

    return-object p1
.end method

.method public addGearData(ILcom/google/android/projection/proto/Protos$GearData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GearData$Builder;->build()Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GearData$Builder;->build()Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGearData(ILcom/google/android/projection/proto/Protos$GearData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGearData(Lcom/google/android/projection/proto/Protos$GearData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GearData$Builder;->build()Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GearData$Builder;->build()Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGearData(Lcom/google/android/projection/proto/Protos$GearData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGearDataBuilder()Lcom/google/android/projection/proto/Protos$GearData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGearDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GearData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$GearData$Builder;

    return-object v0
.end method

.method public addGearDataBuilder(I)Lcom/google/android/projection/proto/Protos$GearData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGearDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GearData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GearData$Builder;

    return-object p1
.end method

.method public addGpsSatelliteData(ILcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;->build()Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;->build()Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGpsSatelliteData(ILcom/google/android/projection/proto/Protos$GpsSatelliteData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGpsSatelliteData(Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;->build()Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;->build()Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGpsSatelliteData(Lcom/google/android/projection/proto/Protos$GpsSatelliteData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGpsSatelliteDataBuilder()Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGpsSatelliteDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;

    return-object v0
.end method

.method public addGpsSatelliteDataBuilder(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGpsSatelliteDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;

    return-object p1
.end method

.method public addGyroscopeData(ILcom/google/android/projection/proto/Protos$GyroscopeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;->build()Lcom/google/android/projection/proto/Protos$GyroscopeData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;->build()Lcom/google/android/projection/proto/Protos$GyroscopeData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGyroscopeData(ILcom/google/android/projection/proto/Protos$GyroscopeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGyroscopeData(Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;->build()Lcom/google/android/projection/proto/Protos$GyroscopeData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;->build()Lcom/google/android/projection/proto/Protos$GyroscopeData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGyroscopeData(Lcom/google/android/projection/proto/Protos$GyroscopeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addGyroscopeDataBuilder()Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGyroscopeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GyroscopeData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GyroscopeData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;

    return-object v0
.end method

.method public addGyroscopeDataBuilder(I)Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGyroscopeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$GyroscopeData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$GyroscopeData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;

    return-object p1
.end method

.method public addHvacData(ILcom/google/android/projection/proto/Protos$HvacData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$HvacData$Builder;->build()Lcom/google/android/projection/proto/Protos$HvacData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$HvacData$Builder;->build()Lcom/google/android/projection/proto/Protos$HvacData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addHvacData(ILcom/google/android/projection/proto/Protos$HvacData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addHvacData(Lcom/google/android/projection/proto/Protos$HvacData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HvacData$Builder;->build()Lcom/google/android/projection/proto/Protos$HvacData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$HvacData$Builder;->build()Lcom/google/android/projection/proto/Protos$HvacData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addHvacData(Lcom/google/android/projection/proto/Protos$HvacData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addHvacDataBuilder()Lcom/google/android/projection/proto/Protos$HvacData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getHvacDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HvacData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HvacData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$HvacData$Builder;

    return-object v0
.end method

.method public addHvacDataBuilder(I)Lcom/google/android/projection/proto/Protos$HvacData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getHvacDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$HvacData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$HvacData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HvacData$Builder;

    return-object p1
.end method

.method public addLightData(ILcom/google/android/projection/proto/Protos$LightData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->build()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->build()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLightData(ILcom/google/android/projection/proto/Protos$LightData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLightData(Lcom/google/android/projection/proto/Protos$LightData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->build()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->build()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLightData(Lcom/google/android/projection/proto/Protos$LightData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLightDataBuilder()Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLightDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$LightData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object v0
.end method

.method public addLightDataBuilder(I)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLightDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$LightData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public addLocationData(ILcom/google/android/projection/proto/Protos$LocationData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;->build()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;->build()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLocationData(ILcom/google/android/projection/proto/Protos$LocationData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLocationData(Lcom/google/android/projection/proto/Protos$LocationData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;->build()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;->build()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLocationData(Lcom/google/android/projection/proto/Protos$LocationData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addLocationDataBuilder()Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLocationDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    return-object v0
.end method

.method public addLocationDataBuilder(I)Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLocationDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$LocationData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    return-object p1
.end method

.method public addNightModeData(ILcom/google/android/projection/proto/Protos$NightModeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;->build()Lcom/google/android/projection/proto/Protos$NightModeData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;->build()Lcom/google/android/projection/proto/Protos$NightModeData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addNightModeData(ILcom/google/android/projection/proto/Protos$NightModeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addNightModeData(Lcom/google/android/projection/proto/Protos$NightModeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;->build()Lcom/google/android/projection/proto/Protos$NightModeData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;->build()Lcom/google/android/projection/proto/Protos$NightModeData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addNightModeData(Lcom/google/android/projection/proto/Protos$NightModeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addNightModeDataBuilder()Lcom/google/android/projection/proto/Protos$NightModeData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getNightModeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NightModeData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NightModeData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;

    return-object v0
.end method

.method public addNightModeDataBuilder(I)Lcom/google/android/projection/proto/Protos$NightModeData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getNightModeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$NightModeData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$NightModeData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;

    return-object p1
.end method

.method public addOdometerData(ILcom/google/android/projection/proto/Protos$OdometerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOdometerData(ILcom/google/android/projection/proto/Protos$OdometerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOdometerData(Lcom/google/android/projection/proto/Protos$OdometerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOdometerData(Lcom/google/android/projection/proto/Protos$OdometerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOdometerDataBuilder()Lcom/google/android/projection/proto/Protos$OdometerData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getOdometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$OdometerData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;

    return-object v0
.end method

.method public addOdometerDataBuilder(I)Lcom/google/android/projection/proto/Protos$OdometerData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getOdometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$OdometerData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;

    return-object p1
.end method

.method public addParkingBrakeData(ILcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;->build()Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;->build()Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addParkingBrakeData(ILcom/google/android/projection/proto/Protos$ParkingBrakeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addParkingBrakeData(Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;->build()Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;->build()Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addParkingBrakeData(Lcom/google/android/projection/proto/Protos$ParkingBrakeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addParkingBrakeDataBuilder()Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getParkingBrakeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;

    return-object v0
.end method

.method public addParkingBrakeDataBuilder(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getParkingBrakeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;

    return-object p1
.end method

.method public addPassengerData(ILcom/google/android/projection/proto/Protos$PassengerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;->build()Lcom/google/android/projection/proto/Protos$PassengerData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;->build()Lcom/google/android/projection/proto/Protos$PassengerData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPassengerData(ILcom/google/android/projection/proto/Protos$PassengerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPassengerData(Lcom/google/android/projection/proto/Protos$PassengerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;->build()Lcom/google/android/projection/proto/Protos$PassengerData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;->build()Lcom/google/android/projection/proto/Protos$PassengerData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPassengerData(Lcom/google/android/projection/proto/Protos$PassengerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addPassengerDataBuilder()Lcom/google/android/projection/proto/Protos$PassengerData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getPassengerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PassengerData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PassengerData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;

    return-object v0
.end method

.method public addPassengerDataBuilder(I)Lcom/google/android/projection/proto/Protos$PassengerData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getPassengerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$PassengerData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$PassengerData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRpmData(ILcom/google/android/projection/proto/Protos$RpmData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$RpmData$Builder;->build()Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$RpmData$Builder;->build()Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRpmData(ILcom/google/android/projection/proto/Protos$RpmData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRpmData(Lcom/google/android/projection/proto/Protos$RpmData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RpmData$Builder;->build()Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$RpmData$Builder;->build()Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRpmData(Lcom/google/android/projection/proto/Protos$RpmData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRpmDataBuilder()Lcom/google/android/projection/proto/Protos$RpmData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getRpmDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RpmData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$RpmData$Builder;

    return-object v0
.end method

.method public addRpmDataBuilder(I)Lcom/google/android/projection/proto/Protos$RpmData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getRpmDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$RpmData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RpmData$Builder;

    return-object p1
.end method

.method public addSpeedData(ILcom/google/android/projection/proto/Protos$SpeedData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;->build()Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;->build()Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSpeedData(ILcom/google/android/projection/proto/Protos$SpeedData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSpeedData(Lcom/google/android/projection/proto/Protos$SpeedData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;->build()Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;->build()Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSpeedData(Lcom/google/android/projection/proto/Protos$SpeedData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addSpeedDataBuilder()Lcom/google/android/projection/proto/Protos$SpeedData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getSpeedDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SpeedData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;

    return-object v0
.end method

.method public addSpeedDataBuilder(I)Lcom/google/android/projection/proto/Protos$SpeedData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getSpeedDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SpeedData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;

    return-object p1
.end method

.method public addTirePressureData(ILcom/google/android/projection/proto/Protos$TirePressureData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;->build()Lcom/google/android/projection/proto/Protos$TirePressureData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;->build()Lcom/google/android/projection/proto/Protos$TirePressureData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTirePressureData(ILcom/google/android/projection/proto/Protos$TirePressureData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTirePressureData(Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;->build()Lcom/google/android/projection/proto/Protos$TirePressureData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;->build()Lcom/google/android/projection/proto/Protos$TirePressureData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTirePressureData(Lcom/google/android/projection/proto/Protos$TirePressureData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTirePressureDataBuilder()Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTirePressureDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TirePressureData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TirePressureData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;

    return-object v0
.end method

.method public addTirePressureDataBuilder(I)Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTirePressureDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TirePressureData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TirePressureData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;

    return-object p1
.end method

.method public addTollCardData(ILcom/google/android/projection/proto/Protos$TollCardData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;->build()Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;->build()Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTollCardData(ILcom/google/android/projection/proto/Protos$TollCardData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTollCardData(Lcom/google/android/projection/proto/Protos$TollCardData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;->build()Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;->build()Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTollCardData(Lcom/google/android/projection/proto/Protos$TollCardData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTollCardDataBuilder()Lcom/google/android/projection/proto/Protos$TollCardData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTollCardDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TollCardData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;

    return-object v0
.end method

.method public addTollCardDataBuilder(I)Lcom/google/android/projection/proto/Protos$TollCardData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTollCardDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TollCardData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;

    return-object p1
.end method

.method public addTrailerData(ILcom/google/android/projection/proto/Protos$TrailerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;->build()Lcom/google/android/projection/proto/Protos$TrailerData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;->build()Lcom/google/android/projection/proto/Protos$TrailerData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTrailerData(ILcom/google/android/projection/proto/Protos$TrailerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTrailerData(Lcom/google/android/projection/proto/Protos$TrailerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;->build()Lcom/google/android/projection/proto/Protos$TrailerData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;->build()Lcom/google/android/projection/proto/Protos$TrailerData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTrailerData(Lcom/google/android/projection/proto/Protos$TrailerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addTrailerDataBuilder()Lcom/google/android/projection/proto/Protos$TrailerData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTrailerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TrailerData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TrailerData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;

    return-object v0
.end method

.method public addTrailerDataBuilder(I)Lcom/google/android/projection/proto/Protos$TrailerData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTrailerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$TrailerData;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$TrailerData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;

    return-object p1
.end method

.method public addVehicleEnergyModelData(ILcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addVehicleEnergyModelData(ILcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addVehicleEnergyModelData(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addVehicleEnergyModelData(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addVehicleEnergyModelDataBuilder()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getVehicleEnergyModelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object v0
.end method

.method public addVehicleEnergyModelDataBuilder(I)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getVehicleEnergyModelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->getDefaultInstance()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public build()Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->build()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->build()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65302(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65402(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_4
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65502(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_6
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_3
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65602(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_9

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_8
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_4
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65702(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_b

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_a
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    goto :goto_5

    :cond_b
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_5
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65802(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_d

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_c
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_6
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65902(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_f

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_e
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    goto :goto_7

    :cond_f
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_7
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66002(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_11

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_10
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    goto :goto_8

    :cond_11
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_8
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66102(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_13

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_12
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    goto :goto_9

    :cond_13
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_9
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66202(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_15

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_14
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    goto :goto_a

    :cond_15
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_a
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66302(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_17

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_16
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    goto :goto_b

    :cond_17
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_b
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66402(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_19

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_18
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    goto :goto_c

    :cond_19
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_c
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66502(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1b

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_1a
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    goto :goto_d

    :cond_1b
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_d
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66602(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_1c
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    goto :goto_e

    :cond_1d
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_e
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66702(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1f

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_1e
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    goto :goto_f

    :cond_1f
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_f
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66802(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_21

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_20
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    goto :goto_10

    :cond_21
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_10
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66902(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_23

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_22
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    goto :goto_11

    :cond_23
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_11
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67002(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_25

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_24
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    goto :goto_12

    :cond_25
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_12
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67102(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_27

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_26
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    goto :goto_13

    :cond_27
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_13
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67202(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_29

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_28
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    goto :goto_14

    :cond_29
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_14
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67302(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2b

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_2a
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    goto :goto_15

    :cond_2b
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_15
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67402(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2d

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_2c
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    goto :goto_16

    :cond_2d
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_16
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67502(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2f

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    iget v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    :cond_2e
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    goto :goto_17

    :cond_2f
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_17
    invoke-static {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67602(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->buildPartial()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_3
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_6
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_7
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_a
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_b
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_c
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_d

    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_d
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_e

    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_e
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_f

    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_f
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_10

    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_10
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_11

    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_12

    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_12
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_13

    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_14

    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_14
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_15

    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_15
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_16

    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_16
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_17

    :cond_17
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_17
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clear()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clear()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clear()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clear()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccelerometerData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearCompassData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearDeadReckoningData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearDiagnosticsData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearDoorData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearDrivingStatusData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearEnvironmentData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFuelData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearGearData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearGpsSatelliteData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearGyroscopeData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearHvacData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearLightData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearLocationData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearNightModeData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearOdometerData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearParkingBrakeData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearPassengerData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearRpmData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearSpeedData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearTirePressureData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearTollCardData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearTrailerData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearVehicleEnergyModelData()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clone()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clone()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clone()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clone()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clone()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clone()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->clone()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccelerometerData(I)Lcom/google/android/projection/proto/Protos$AccelerometerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$AccelerometerData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getAccelerometerDataBuilder(I)Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getAccelerometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;

    return-object p1
.end method

.method public getAccelerometerDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getAccelerometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccelerometerDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getAccelerometerDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccelerometerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$AccelerometerDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$AccelerometerDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getAccelerometerDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$AccelerometerDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$CompassData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getCompassDataBuilder(I)Lcom/google/android/projection/proto/Protos$CompassData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getCompassDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$CompassData$Builder;

    return-object p1
.end method

.method public getCompassDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$CompassData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getCompassDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCompassDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getCompassDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$CompassData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCompassDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$CompassDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$CompassDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getCompassDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$CompassDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeadReckoningData(I)Lcom/google/android/projection/proto/Protos$DeadReckoningData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getDeadReckoningDataBuilder(I)Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDeadReckoningDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;

    return-object p1
.end method

.method public getDeadReckoningDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDeadReckoningDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeadReckoningDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getDeadReckoningDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeadReckoningDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$DeadReckoningDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$DeadReckoningDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getDeadReckoningDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$64700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticsData(I)Lcom/google/android/projection/proto/Protos$DiagnosticsData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getDiagnosticsDataBuilder(I)Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDiagnosticsDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;

    return-object p1
.end method

.method public getDiagnosticsDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDiagnosticsDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticsDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getDiagnosticsDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticsDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$DiagnosticsDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$DiagnosticsDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getDiagnosticsDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$DiagnosticsDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDoorData(I)Lcom/google/android/projection/proto/Protos$DoorData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$DoorData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getDoorDataBuilder(I)Lcom/google/android/projection/proto/Protos$DoorData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDoorDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DoorData$Builder;

    return-object p1
.end method

.method public getDoorDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DoorData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDoorDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDoorDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getDoorDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DoorData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDoorDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$DoorDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$DoorDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getDoorDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$DoorDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDrivingStatusData(I)Lcom/google/android/projection/proto/Protos$DrivingStatusData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getDrivingStatusDataBuilder(I)Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDrivingStatusDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;

    return-object p1
.end method

.method public getDrivingStatusDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDrivingStatusDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDrivingStatusDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getDrivingStatusDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDrivingStatusDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$DrivingStatusDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$DrivingStatusDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getDrivingStatusDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$DrivingStatusDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironmentData(I)Lcom/google/android/projection/proto/Protos$EnvironmentData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$EnvironmentData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getEnvironmentDataBuilder(I)Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getEnvironmentDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;

    return-object p1
.end method

.method public getEnvironmentDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getEnvironmentDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironmentDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getEnvironmentDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironmentDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$EnvironmentDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$EnvironmentDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getEnvironmentDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$EnvironmentDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFuelData(I)Lcom/google/android/projection/proto/Protos$FuelData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$FuelData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getFuelDataBuilder(I)Lcom/google/android/projection/proto/Protos$FuelData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getFuelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$FuelData$Builder;

    return-object p1
.end method

.method public getFuelDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$FuelData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getFuelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFuelDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getFuelDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$FuelData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFuelDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$FuelDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$FuelDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getFuelDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$FuelDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGearData(I)Lcom/google/android/projection/proto/Protos$GearData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$GearData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getGearDataBuilder(I)Lcom/google/android/projection/proto/Protos$GearData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGearDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GearData$Builder;

    return-object p1
.end method

.method public getGearDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GearData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGearDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGearDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getGearDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GearData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGearDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$GearDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$GearDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getGearDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$GearDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGpsSatelliteData(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getGpsSatelliteDataBuilder(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGpsSatelliteDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;

    return-object p1
.end method

.method public getGpsSatelliteDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGpsSatelliteDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGpsSatelliteDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getGpsSatelliteDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGpsSatelliteDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$GpsSatelliteDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getGpsSatelliteDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$GpsSatelliteDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGyroscopeData(I)Lcom/google/android/projection/proto/Protos$GyroscopeData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$GyroscopeData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getGyroscopeDataBuilder(I)Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGyroscopeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;

    return-object p1
.end method

.method public getGyroscopeDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGyroscopeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGyroscopeDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getGyroscopeDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGyroscopeDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$GyroscopeDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$GyroscopeDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getGyroscopeDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$GyroscopeDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHvacData(I)Lcom/google/android/projection/proto/Protos$HvacData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$HvacData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getHvacDataBuilder(I)Lcom/google/android/projection/proto/Protos$HvacData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getHvacDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HvacData$Builder;

    return-object p1
.end method

.method public getHvacDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$HvacData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getHvacDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHvacDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getHvacDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$HvacData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHvacDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$HvacDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$HvacDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getHvacDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$HvacDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLightData(I)Lcom/google/android/projection/proto/Protos$LightData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getLightDataBuilder(I)Lcom/google/android/projection/proto/Protos$LightData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLightDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData$Builder;

    return-object p1
.end method

.method public getLightDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$LightData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLightDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLightDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getLightDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$LightData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLightDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getLightDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationData(I)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getLocationDataBuilder(I)Lcom/google/android/projection/proto/Protos$LocationData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLocationDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LocationData$Builder;

    return-object p1
.end method

.method public getLocationDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$LocationData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLocationDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getLocationDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$LocationData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$LocationDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$LocationDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getLocationDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$LocationDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNightModeData(I)Lcom/google/android/projection/proto/Protos$NightModeData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$NightModeData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getNightModeDataBuilder(I)Lcom/google/android/projection/proto/Protos$NightModeData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getNightModeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;

    return-object p1
.end method

.method public getNightModeDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NightModeData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getNightModeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNightModeDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getNightModeDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NightModeData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNightModeDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$NightModeDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$NightModeDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getNightModeDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$NightModeDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOdometerData(I)Lcom/google/android/projection/proto/Protos$OdometerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$OdometerData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getOdometerDataBuilder(I)Lcom/google/android/projection/proto/Protos$OdometerData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getOdometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;

    return-object p1
.end method

.method public getOdometerDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$OdometerData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getOdometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOdometerDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getOdometerDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$OdometerData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOdometerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$OdometerDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$OdometerDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getOdometerDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$OdometerDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParkingBrakeData(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getParkingBrakeDataBuilder(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getParkingBrakeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;

    return-object p1
.end method

.method public getParkingBrakeDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getParkingBrakeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParkingBrakeDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getParkingBrakeDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParkingBrakeDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$ParkingBrakeDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getParkingBrakeDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPassengerData(I)Lcom/google/android/projection/proto/Protos$PassengerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$PassengerData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getPassengerDataBuilder(I)Lcom/google/android/projection/proto/Protos$PassengerData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getPassengerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;

    return-object p1
.end method

.method public getPassengerDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$PassengerData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getPassengerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPassengerDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getPassengerDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$PassengerData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPassengerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$PassengerDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$PassengerDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getPassengerDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$PassengerDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRpmData(I)Lcom/google/android/projection/proto/Protos$RpmData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$RpmData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getRpmDataBuilder(I)Lcom/google/android/projection/proto/Protos$RpmData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getRpmDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RpmData$Builder;

    return-object p1
.end method

.method public getRpmDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RpmData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getRpmDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRpmDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getRpmDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RpmData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRpmDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$RpmDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$RpmDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getRpmDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$RpmDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedData(I)Lcom/google/android/projection/proto/Protos$SpeedData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$SpeedData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getSpeedDataBuilder(I)Lcom/google/android/projection/proto/Protos$SpeedData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getSpeedDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;

    return-object p1
.end method

.method public getSpeedDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$SpeedData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getSpeedDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getSpeedDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$SpeedData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$SpeedDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$SpeedDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getSpeedDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$SpeedDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTirePressureData(I)Lcom/google/android/projection/proto/Protos$TirePressureData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$TirePressureData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getTirePressureDataBuilder(I)Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTirePressureDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;

    return-object p1
.end method

.method public getTirePressureDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTirePressureDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTirePressureDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getTirePressureDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TirePressureData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTirePressureDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$TirePressureDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$TirePressureDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getTirePressureDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$TirePressureDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTollCardData(I)Lcom/google/android/projection/proto/Protos$TollCardData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$TollCardData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getTollCardDataBuilder(I)Lcom/google/android/projection/proto/Protos$TollCardData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTollCardDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;

    return-object p1
.end method

.method public getTollCardDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TollCardData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTollCardDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTollCardDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getTollCardDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TollCardData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTollCardDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$TollCardDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$TollCardDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getTollCardDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$TollCardDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrailerData(I)Lcom/google/android/projection/proto/Protos$TrailerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$TrailerData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getTrailerDataBuilder(I)Lcom/google/android/projection/proto/Protos$TrailerData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTrailerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;

    return-object p1
.end method

.method public getTrailerDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TrailerData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTrailerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrailerDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getTrailerDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TrailerData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrailerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$TrailerDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/Protos$TrailerDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getTrailerDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$TrailerDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleEnergyModelData(I)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getVehicleEnergyModelDataBuilder(I)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getVehicleEnergyModelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;

    return-object p1
.end method

.method public getVehicleEnergyModelDataBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getVehicleEnergyModelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleEnergyModelDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getVehicleEnergyModelDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleEnergyModelDataOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    goto :goto_0
.end method

.method public getVehicleEnergyModelDataOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$64800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/android/projection/proto/Protos$SensorBatch;

    const-class v2, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLocationDataCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLocationData(I)Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$LocationData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getCompassDataCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$CompassData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getSpeedDataCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getSpeedData(I)Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$SpeedData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getRpmDataCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getRpmData(I)Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RpmData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getOdometerDataCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getOdometerData(I)Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$OdometerData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    return v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    move v1, v0

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getParkingBrakeDataCount()I

    move-result v2

    if-ge v1, v2, :cond_b

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getParkingBrakeData(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    move v1, v0

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGearDataCount()I

    move-result v2

    if-ge v1, v2, :cond_d

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGearData(I)Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$GearData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_c

    return v0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    move v1, v0

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDrivingStatusDataCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDrivingStatusData(I)Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$DrivingStatusData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    move v1, v0

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGpsSatelliteDataCount()I

    move-result v2

    if-ge v1, v2, :cond_11

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGpsSatelliteData(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    move v1, v0

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTollCardDataCount()I

    move-result v2

    if-ge v1, v2, :cond_13

    invoke-virtual {p0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTollCardData(I)Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$TollCardData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67700()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLocationDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67800()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getCompassDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_6

    :cond_b
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_8

    :cond_c
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67900()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getSpeedDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_7

    :cond_d
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_f
    :goto_8
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_9

    :cond_10
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_b

    :cond_11
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68000()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getRpmDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_a

    :cond_12
    move-object v0, v1

    :goto_a
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_b

    :cond_13
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_14
    :goto_b
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_c

    :cond_15
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_c
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_e

    :cond_16
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68100()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getOdometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_d

    :cond_17
    move-object v0, v1

    :goto_d
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_e

    :cond_18
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_19
    :goto_e
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_f

    :cond_1a
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_11

    :cond_1b
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68200()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getFuelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_10

    :cond_1c
    move-object v0, v1

    :goto_10
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_11

    :cond_1d
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_1e
    :goto_11
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_20

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_12

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_12
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_14

    :cond_20
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68300()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getParkingBrakeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_13

    :cond_21
    move-object v0, v1

    :goto_13
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_14

    :cond_22
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$65900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_23
    :goto_14
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_25

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_15

    :cond_24
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_17

    :cond_25
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68400()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGearDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_16

    :cond_26
    move-object v0, v1

    :goto_16
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_17

    :cond_27
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_28
    :goto_17
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2a

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_18

    :cond_29
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_18
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1a

    :cond_2a
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68500()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDiagnosticsDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_19

    :cond_2b
    move-object v0, v1

    :goto_19
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1a

    :cond_2c
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_2d
    :goto_1a
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2f

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_1b

    :cond_2e
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1b
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1d

    :cond_2f
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68600()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getNightModeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1c

    :cond_30
    move-object v0, v1

    :goto_1c
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1d

    :cond_31
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_32
    :goto_1d
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_34

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_1e

    :cond_33
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1e
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_20

    :cond_34
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68700()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getEnvironmentDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1f

    :cond_35
    move-object v0, v1

    :goto_1f
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_20

    :cond_36
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_37
    :goto_20
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_39

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_21

    :cond_38
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_21
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_23

    :cond_39
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68800()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getHvacDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_22

    :cond_3a
    move-object v0, v1

    :goto_22
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_23

    :cond_3b
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_3c
    :goto_23
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_3e

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_24

    :cond_3d
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_26

    :cond_3e
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$68900()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDrivingStatusDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_25

    :cond_3f
    move-object v0, v1

    :goto_25
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_26

    :cond_40
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_41
    :goto_26
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_43

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_27

    :cond_42
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_27
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_29

    :cond_43
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69000()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDeadReckoningDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_28

    :cond_44
    move-object v0, v1

    :goto_28
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_29

    :cond_45
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_46
    :goto_29
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_48

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_2a

    :cond_47
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2a
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2c

    :cond_48
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69100()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getPassengerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_2b

    :cond_49
    move-object v0, v1

    :goto_2b
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2c

    :cond_4a
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_4b
    :goto_2c
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v2, -0x8001

    if-nez v0, :cond_4d

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_2d

    :cond_4c
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2d
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2f

    :cond_4d
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69200()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getDoorDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_2e

    :cond_4e
    move-object v0, v1

    :goto_2e
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2f

    :cond_4f
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_50
    :goto_2f
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v2, -0x10001

    if-nez v0, :cond_52

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_30

    :cond_51
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_30
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_32

    :cond_52
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69300()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getLightDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_31

    :cond_53
    move-object v0, v1

    :goto_31
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_32

    :cond_54
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$66900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_55
    :goto_32
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v2, -0x20001

    if-nez v0, :cond_57

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_33

    :cond_56
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_33
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_35

    :cond_57
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69400()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTirePressureDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_34

    :cond_58
    move-object v0, v1

    :goto_34
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_35

    :cond_59
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_5a
    :goto_35
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v2, -0x40001

    if-nez v0, :cond_5c

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_36

    :cond_5b
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_38

    :cond_5c
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69500()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getAccelerometerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_37

    :cond_5d
    move-object v0, v1

    :goto_37
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_38

    :cond_5e
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_5f
    :goto_38
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v2, -0x80001

    if-nez v0, :cond_61

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_39

    :cond_60
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_3b

    :cond_61
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69600()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGyroscopeDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_3a

    :cond_62
    move-object v0, v1

    :goto_3a
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_3b

    :cond_63
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_64
    :goto_3b
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v2, -0x100001

    if-nez v0, :cond_66

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_3c

    :cond_65
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3c
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_3e

    :cond_66
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69700()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getGpsSatelliteDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_3d

    :cond_67
    move-object v0, v1

    :goto_3d
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_3e

    :cond_68
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_69
    :goto_3e
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_6b

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x200001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_3f

    :cond_6a
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3f
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_41

    :cond_6b
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x200001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69800()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTollCardDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_40

    :cond_6c
    move-object v0, v1

    :goto_40
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_41

    :cond_6d
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_6e
    :goto_41
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_70

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x400001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_42

    :cond_6f
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_44

    :cond_70
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x400001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$69900()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getVehicleEnergyModelDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_43

    :cond_71
    move-object v0, v1

    :goto_43
    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_44

    :cond_72
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_73
    :goto_44
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_75

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    goto :goto_45

    :cond_74
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_46

    :cond_75
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    const v2, -0x800001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$70000()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->getTrailerDataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_76
    iput-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_46

    :cond_77
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$67600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_78
    :goto_46
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->access$70100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/android/projection/proto/Protos$SensorBatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 3
    instance-of v0, p1, Lcom/google/android/projection/proto/Protos$SensorBatch;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeAccelerometerData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeCompassData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeDeadReckoningData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeDiagnosticsData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeDoorData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeDrivingStatusData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeEnvironmentData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeFuelData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeGearData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeGpsSatelliteData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeGyroscopeData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeHvacData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeLightData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeLocationData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeNightModeData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeOdometerData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeParkingBrakeData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removePassengerData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeRpmData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeSpeedData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeTirePressureData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeTollCardData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeTrailerData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeVehicleEnergyModelData(I)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAccelerometerData(ILcom/google/android/projection/proto/Protos$AccelerometerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$AccelerometerData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AccelerometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$AccelerometerData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAccelerometerData(ILcom/google/android/projection/proto/Protos$AccelerometerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureAccelerometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCompassData(ILcom/google/android/projection/proto/Protos$CompassData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$CompassData$Builder;->build()Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$CompassData$Builder;->build()Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCompassData(ILcom/google/android/projection/proto/Protos$CompassData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureCompassDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->compassData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDeadReckoningData(ILcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;->build()Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DeadReckoningData$Builder;->build()Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDeadReckoningData(ILcom/google/android/projection/proto/Protos$DeadReckoningData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDeadReckoningDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDiagnosticsData(ILcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;->build()Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DiagnosticsData$Builder;->build()Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDiagnosticsData(ILcom/google/android/projection/proto/Protos$DiagnosticsData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDiagnosticsDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDoorData(ILcom/google/android/projection/proto/Protos$DoorData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DoorData$Builder;->build()Lcom/google/android/projection/proto/Protos$DoorData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DoorData$Builder;->build()Lcom/google/android/projection/proto/Protos$DoorData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDoorData(ILcom/google/android/projection/proto/Protos$DoorData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDoorDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->doorData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDrivingStatusData(ILcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;->build()Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$DrivingStatusData$Builder;->build()Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setDrivingStatusData(ILcom/google/android/projection/proto/Protos$DrivingStatusData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureDrivingStatusDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setEnvironmentData(ILcom/google/android/projection/proto/Protos$EnvironmentData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;->build()Lcom/google/android/projection/proto/Protos$EnvironmentData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$EnvironmentData$Builder;->build()Lcom/google/android/projection/proto/Protos$EnvironmentData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setEnvironmentData(ILcom/google/android/projection/proto/Protos$EnvironmentData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureEnvironmentDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->environmentData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFuelData(ILcom/google/android/projection/proto/Protos$FuelData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$FuelData$Builder;->build()Lcom/google/android/projection/proto/Protos$FuelData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$FuelData$Builder;->build()Lcom/google/android/projection/proto/Protos$FuelData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFuelData(ILcom/google/android/projection/proto/Protos$FuelData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureFuelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->fuelData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGearData(ILcom/google/android/projection/proto/Protos$GearData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GearData$Builder;->build()Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GearData$Builder;->build()Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGearData(ILcom/google/android/projection/proto/Protos$GearData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGearDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gearData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGpsSatelliteData(ILcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;->build()Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData$Builder;->build()Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGpsSatelliteData(ILcom/google/android/projection/proto/Protos$GpsSatelliteData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGpsSatelliteDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGyroscopeData(ILcom/google/android/projection/proto/Protos$GyroscopeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;->build()Lcom/google/android/projection/proto/Protos$GyroscopeData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GyroscopeData$Builder;->build()Lcom/google/android/projection/proto/Protos$GyroscopeData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setGyroscopeData(ILcom/google/android/projection/proto/Protos$GyroscopeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureGyroscopeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setHvacData(ILcom/google/android/projection/proto/Protos$HvacData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$HvacData$Builder;->build()Lcom/google/android/projection/proto/Protos$HvacData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$HvacData$Builder;->build()Lcom/google/android/projection/proto/Protos$HvacData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setHvacData(ILcom/google/android/projection/proto/Protos$HvacData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureHvacDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->hvacData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLightData(ILcom/google/android/projection/proto/Protos$LightData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->build()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$LightData$Builder;->build()Lcom/google/android/projection/proto/Protos$LightData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLightData(ILcom/google/android/projection/proto/Protos$LightData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLightDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->lightData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLocationData(ILcom/google/android/projection/proto/Protos$LocationData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;->build()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$LocationData$Builder;->build()Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setLocationData(ILcom/google/android/projection/proto/Protos$LocationData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureLocationDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->locationData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setNightModeData(ILcom/google/android/projection/proto/Protos$NightModeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;->build()Lcom/google/android/projection/proto/Protos$NightModeData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$NightModeData$Builder;->build()Lcom/google/android/projection/proto/Protos$NightModeData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setNightModeData(ILcom/google/android/projection/proto/Protos$NightModeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureNightModeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->nightModeData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setOdometerData(ILcom/google/android/projection/proto/Protos$OdometerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$OdometerData$Builder;->build()Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setOdometerData(ILcom/google/android/projection/proto/Protos$OdometerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureOdometerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->odometerData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setParkingBrakeData(ILcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;->build()Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData$Builder;->build()Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setParkingBrakeData(ILcom/google/android/projection/proto/Protos$ParkingBrakeData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureParkingBrakeDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPassengerData(ILcom/google/android/projection/proto/Protos$PassengerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;->build()Lcom/google/android/projection/proto/Protos$PassengerData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$PassengerData$Builder;->build()Lcom/google/android/projection/proto/Protos$PassengerData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPassengerData(ILcom/google/android/projection/proto/Protos$PassengerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensurePassengerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->passengerData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRpmData(ILcom/google/android/projection/proto/Protos$RpmData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$RpmData$Builder;->build()Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$RpmData$Builder;->build()Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRpmData(ILcom/google/android/projection/proto/Protos$RpmData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureRpmDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->rpmData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSpeedData(ILcom/google/android/projection/proto/Protos$SpeedData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;->build()Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$SpeedData$Builder;->build()Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setSpeedData(ILcom/google/android/projection/proto/Protos$SpeedData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureSpeedDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->speedData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTirePressureData(ILcom/google/android/projection/proto/Protos$TirePressureData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;->build()Lcom/google/android/projection/proto/Protos$TirePressureData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TirePressureData$Builder;->build()Lcom/google/android/projection/proto/Protos$TirePressureData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTirePressureData(ILcom/google/android/projection/proto/Protos$TirePressureData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTirePressureDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTollCardData(ILcom/google/android/projection/proto/Protos$TollCardData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;->build()Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TollCardData$Builder;->build()Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTollCardData(ILcom/google/android/projection/proto/Protos$TollCardData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTollCardDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->tollCardData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTrailerData(ILcom/google/android/projection/proto/Protos$TrailerData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;->build()Lcom/google/android/projection/proto/Protos$TrailerData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$TrailerData$Builder;->build()Lcom/google/android/projection/proto/Protos$TrailerData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setTrailerData(ILcom/google/android/projection/proto/Protos$TrailerData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureTrailerDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->trailerData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVehicleEnergyModelData(ILcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData$Builder;->build()Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setVehicleEnergyModelData(ILcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelDataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->ensureVehicleEnergyModelDataIsMutable()V

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method
