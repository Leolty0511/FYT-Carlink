.class public final Lcom/google/android/projection/proto/Protos$SensorBatch;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/proto/Protos$SensorBatchOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorBatch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    }
.end annotation


# static fields
.field public static final ACCELEROMETER_DATA_FIELD_NUMBER:I = 0x13

.field public static final COMPASS_DATA_FIELD_NUMBER:I = 0x2

.field public static final DEAD_RECKONING_DATA_FIELD_NUMBER:I = 0xe

.field private static final DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorBatch;

.field public static final DIAGNOSTICS_DATA_FIELD_NUMBER:I = 0x9

.field public static final DOOR_DATA_FIELD_NUMBER:I = 0x10

.field public static final DRIVING_STATUS_DATA_FIELD_NUMBER:I = 0xd

.field public static final ENVIRONMENT_DATA_FIELD_NUMBER:I = 0xb

.field public static final FUEL_DATA_FIELD_NUMBER:I = 0x6

.field public static final GEAR_DATA_FIELD_NUMBER:I = 0x8

.field public static final GPS_SATELLITE_DATA_FIELD_NUMBER:I = 0x15

.field public static final GYROSCOPE_DATA_FIELD_NUMBER:I = 0x14

.field public static final HVAC_DATA_FIELD_NUMBER:I = 0xc

.field public static final LIGHT_DATA_FIELD_NUMBER:I = 0x11

.field public static final LOCATION_DATA_FIELD_NUMBER:I = 0x1

.field public static final NIGHT_MODE_DATA_FIELD_NUMBER:I = 0xa

.field public static final ODOMETER_DATA_FIELD_NUMBER:I = 0x5

.field public static final PARKING_BRAKE_DATA_FIELD_NUMBER:I = 0x7

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$SensorBatch;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSENGER_DATA_FIELD_NUMBER:I = 0xf

.field public static final RPM_DATA_FIELD_NUMBER:I = 0x4

.field public static final SPEED_DATA_FIELD_NUMBER:I = 0x3

.field public static final TIRE_PRESSURE_DATA_FIELD_NUMBER:I = 0x12

.field public static final TOLL_CARD_DATA_FIELD_NUMBER:I = 0x16

.field public static final TRAILER_DATA_FIELD_NUMBER:I = 0x18

.field public static final VEHICLE_ENERGY_MODEL_DATA_FIELD_NUMBER:I = 0x17

.field private static final serialVersionUID:J


# instance fields
.field private accelerometerData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$AccelerometerData;",
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

.field private deadReckoningData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DeadReckoningData;",
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

.field private doorData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$DoorData;",
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

.field private environmentData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$EnvironmentData;",
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

.field private gearData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GearData;",
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

.field private gyroscopeData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$GyroscopeData;",
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

.field private lightData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$LightData;",
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

.field private memoizedIsInitialized:B

.field private nightModeData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$NightModeData;",
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

.field private parkingBrakeData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$ParkingBrakeData;",
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

.field private rpmData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$RpmData;",
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

.field private tirePressureData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TirePressureData;",
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

.field private trailerData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TrailerData;",
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
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorBatch;

    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorBatch$1;

    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$SensorBatch$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 12

    .line 2
    invoke-direct {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/high16 v3, 0x200000

    const/high16 v4, 0x100000

    const/high16 v5, 0x80000

    const/high16 v6, 0x40000

    const/high16 v7, 0x20000

    const/high16 v8, 0x10000

    const v9, 0x8000

    if-nez v2, :cond_31

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v10

    const/4 v11, 0x1

    sparse-switch v10, :sswitch_data_0

    invoke-virtual {p0, p1, v0, p2, v10}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_3

    :sswitch_0
    const/high16 v10, 0x800000

    and-int/2addr v10, v1

    if-nez v10, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    const/high16 v10, 0x800000

    or-int/2addr v1, v10

    :cond_1
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$TrailerData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$TrailerData;

    :goto_1
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    const/high16 v10, 0x400000

    and-int/2addr v10, v1

    if-nez v10, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    const/high16 v10, 0x400000

    or-int/2addr v1, v10

    :cond_2
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {}, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;->parser()Lcom/google/protobuf/Parser;

    move-result-object v11

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    goto :goto_1

    :sswitch_2
    and-int v10, v1, v3

    if-nez v10, :cond_3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    or-int/2addr v1, v3

    :cond_3
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$TollCardData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$TollCardData;

    goto :goto_1

    :sswitch_3
    and-int v10, v1, v4

    if-nez v10, :cond_4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    or-int/2addr v1, v4

    :cond_4
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    goto :goto_1

    :sswitch_4
    and-int v10, v1, v5

    if-nez v10, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    or-int/2addr v1, v5

    :cond_5
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$GyroscopeData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$GyroscopeData;

    goto :goto_1

    :sswitch_5
    and-int v10, v1, v6

    if-nez v10, :cond_6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    or-int/2addr v1, v6

    :cond_6
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$AccelerometerData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$AccelerometerData;

    goto :goto_1

    :sswitch_6
    and-int v10, v1, v7

    if-nez v10, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    or-int/2addr v1, v7

    :cond_7
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$TirePressureData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$TirePressureData;

    goto/16 :goto_1

    :sswitch_7
    and-int v10, v1, v8

    if-nez v10, :cond_8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    or-int/2addr v1, v8

    :cond_8
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$LightData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$LightData;

    goto/16 :goto_1

    :sswitch_8
    and-int v10, v1, v9

    if-nez v10, :cond_9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    or-int/2addr v1, v9

    :cond_9
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$DoorData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$DoorData;

    goto/16 :goto_1

    :sswitch_9
    and-int/lit16 v10, v1, 0x4000

    if-nez v10, :cond_a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x4000

    :cond_a
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$PassengerData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$PassengerData;

    goto/16 :goto_1

    :sswitch_a
    and-int/lit16 v10, v1, 0x2000

    if-nez v10, :cond_b

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x2000

    :cond_b
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$DeadReckoningData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    goto/16 :goto_1

    :sswitch_b
    and-int/lit16 v10, v1, 0x1000

    if-nez v10, :cond_c

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x1000

    :cond_c
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$DrivingStatusData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    goto/16 :goto_1

    :sswitch_c
    and-int/lit16 v10, v1, 0x800

    if-nez v10, :cond_d

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x800

    :cond_d
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$HvacData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$HvacData;

    goto/16 :goto_1

    :sswitch_d
    and-int/lit16 v10, v1, 0x400

    if-nez v10, :cond_e

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x400

    :cond_e
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$EnvironmentData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$EnvironmentData;

    goto/16 :goto_1

    :sswitch_e
    and-int/lit16 v10, v1, 0x200

    if-nez v10, :cond_f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x200

    :cond_f
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$NightModeData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$NightModeData;

    goto/16 :goto_1

    :sswitch_f
    and-int/lit16 v10, v1, 0x100

    if-nez v10, :cond_10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x100

    :cond_10
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$DiagnosticsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    goto/16 :goto_1

    :sswitch_10
    and-int/lit16 v10, v1, 0x80

    if-nez v10, :cond_11

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    or-int/lit16 v1, v1, 0x80

    :cond_11
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$GearData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$GearData;

    goto/16 :goto_1

    :sswitch_11
    and-int/lit8 v10, v1, 0x40

    if-nez v10, :cond_12

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x40

    :cond_12
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    goto/16 :goto_1

    :sswitch_12
    and-int/lit8 v10, v1, 0x20

    if-nez v10, :cond_13

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x20

    :cond_13
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$FuelData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$FuelData;

    goto/16 :goto_1

    :sswitch_13
    and-int/lit8 v10, v1, 0x10

    if-nez v10, :cond_14

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x10

    :cond_14
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$OdometerData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$OdometerData;

    goto/16 :goto_1

    :sswitch_14
    and-int/lit8 v10, v1, 0x8

    if-nez v10, :cond_15

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x8

    :cond_15
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$RpmData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$RpmData;

    goto/16 :goto_1

    :sswitch_15
    and-int/lit8 v10, v1, 0x4

    if-nez v10, :cond_16

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x4

    :cond_16
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$SpeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$SpeedData;

    goto/16 :goto_1

    :sswitch_16
    and-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_17

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x2

    :cond_17
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$CompassData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$CompassData;

    goto/16 :goto_1

    :sswitch_17
    and-int/lit8 v10, v1, 0x1

    if-nez v10, :cond_18

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x1

    :cond_18
    iget-object v10, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    sget-object v11, Lcom/google/android/projection/proto/Protos$LocationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v11, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v11

    check-cast v11, Lcom/google/android/projection/proto/Protos$LocationData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :goto_2
    :sswitch_18
    move v2, v11

    goto/16 :goto_0

    :goto_3
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v1, 0x1

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    :cond_19
    and-int/lit8 p2, v1, 0x2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p2, v1, 0x4

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p2, v1, 0x8

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    :cond_1c
    and-int/lit8 p2, v1, 0x10

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    :cond_1d
    and-int/lit8 p2, v1, 0x20

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    :cond_1e
    and-int/lit8 p2, v1, 0x40

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    :cond_1f
    and-int/lit16 p2, v1, 0x80

    if-eqz p2, :cond_20

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    :cond_20
    and-int/lit16 p2, v1, 0x100

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    :cond_21
    and-int/lit16 p2, v1, 0x200

    if-eqz p2, :cond_22

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    :cond_22
    and-int/lit16 p2, v1, 0x400

    if-eqz p2, :cond_23

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    :cond_23
    and-int/lit16 p2, v1, 0x800

    if-eqz p2, :cond_24

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    :cond_24
    and-int/lit16 p2, v1, 0x1000

    if-eqz p2, :cond_25

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    :cond_25
    and-int/lit16 p2, v1, 0x2000

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    :cond_26
    and-int/lit16 p2, v1, 0x4000

    if-eqz p2, :cond_27

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    :cond_27
    and-int p2, v1, v9

    if-eqz p2, :cond_28

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    :cond_28
    and-int p2, v1, v8

    if-eqz p2, :cond_29

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    :cond_29
    and-int p2, v1, v7

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    :cond_2a
    and-int p2, v1, v6

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    :cond_2b
    and-int p2, v1, v5

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    :cond_2c
    and-int p2, v1, v4

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    :cond_2d
    and-int p2, v1, v3

    if-eqz p2, :cond_2e

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    :cond_2e
    const/high16 p2, 0x400000

    and-int/2addr p2, v1

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    :cond_2f
    const/high16 p2, 0x800000

    and-int/2addr p2, v1

    if-eqz p2, :cond_30

    iget-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    :cond_30
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_31
    and-int/lit8 p1, v1, 0x1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    :cond_32
    and-int/lit8 p1, v1, 0x2

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    :cond_33
    and-int/lit8 p1, v1, 0x4

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    :cond_34
    and-int/lit8 p1, v1, 0x8

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    :cond_35
    and-int/lit8 p1, v1, 0x10

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    :cond_36
    and-int/lit8 p1, v1, 0x20

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    :cond_37
    and-int/lit8 p1, v1, 0x40

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    :cond_38
    and-int/lit16 p1, v1, 0x80

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    :cond_39
    and-int/lit16 p1, v1, 0x100

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    :cond_3a
    and-int/lit16 p1, v1, 0x200

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    :cond_3b
    and-int/lit16 p1, v1, 0x400

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    :cond_3c
    and-int/lit16 p1, v1, 0x800

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    :cond_3d
    and-int/lit16 p1, v1, 0x1000

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    :cond_3e
    and-int/lit16 p1, v1, 0x2000

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    :cond_3f
    and-int/lit16 p1, v1, 0x4000

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    :cond_40
    and-int p1, v1, v9

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    :cond_41
    and-int p1, v1, v8

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    :cond_42
    and-int p1, v1, v7

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    :cond_43
    and-int p1, v1, v6

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    :cond_44
    and-int p1, v1, v5

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    :cond_45
    and-int p1, v1, v4

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    :cond_46
    and-int p1, v1, v3

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    :cond_47
    const/high16 p1, 0x400000

    and-int/2addr p1, v1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    :cond_48
    const/high16 p1, 0x800000

    and-int/2addr p1, v1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    :cond_49
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0xa -> :sswitch_17
        0x12 -> :sswitch_16
        0x1a -> :sswitch_15
        0x22 -> :sswitch_14
        0x2a -> :sswitch_13
        0x32 -> :sswitch_12
        0x3a -> :sswitch_11
        0x42 -> :sswitch_10
        0x4a -> :sswitch_f
        0x52 -> :sswitch_e
        0x5a -> :sswitch_d
        0x62 -> :sswitch_c
        0x6a -> :sswitch_b
        0x72 -> :sswitch_a
        0x7a -> :sswitch_9
        0x82 -> :sswitch_8
        0x8a -> :sswitch_7
        0x92 -> :sswitch_6
        0x9a -> :sswitch_5
        0xa2 -> :sswitch_4
        0xaa -> :sswitch_3
        0xb2 -> :sswitch_2
        0xba -> :sswitch_1
        0xc2 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/proto/Protos$SensorBatch;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/android/projection/proto/Protos$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method public static synthetic access$65100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$65300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$65302(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$65400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$65402(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$65500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$65502(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$65600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$65602(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$65700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$65702(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$65800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$65802(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$65900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$65902(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66002(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66102(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66202(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66302(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66402(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66502(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66602(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66700(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66702(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66800(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66802(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$66900(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$66902(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$67000(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$67002(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$67100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$67102(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$67200(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$67202(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$67300(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$67302(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$67400(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$67402(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$67500(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$67502(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$67600(Lcom/google/android/projection/proto/Protos$SensorBatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$67602(Lcom/google/android/projection/proto/Protos$SensorBatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$67700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$67800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$67900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$68900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$69900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$70000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$70100(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos;->access$64700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorBatch;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorBatch;

    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$SensorBatch;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/projection/proto/Protos$SensorBatch;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/projection/proto/Protos$SensorBatch;

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLocationDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLocationDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getFuelDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getFuelDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDiagnosticsDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDiagnosticsDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getNightModeDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getNightModeDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getEnvironmentDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getEnvironmentDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getHvacDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getHvacDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDeadReckoningDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDeadReckoningDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getPassengerDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getPassengerDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDoorDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDoorDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLightDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLightDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTirePressureDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTirePressureDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getAccelerometerDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getAccelerometerDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGyroscopeDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGyroscopeDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGpsSatelliteDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGpsSatelliteDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTollCardDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTollCardDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getVehicleEnergyModelDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getVehicleEnergyModelDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTrailerDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTrailerDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public getAccelerometerData(I)Lcom/google/android/projection/proto/Protos$AccelerometerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$AccelerometerData;

    return-object p1
.end method

.method public getAccelerometerDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    return-object v0
.end method

.method public getAccelerometerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$AccelerometerDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$AccelerometerDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    return-object v0
.end method

.method public getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$CompassData;

    return-object p1
.end method

.method public getCompassDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    return-object v0
.end method

.method public getCompassDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$CompassDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$CompassDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    return-object v0
.end method

.method public getDeadReckoningData(I)Lcom/google/android/projection/proto/Protos$DeadReckoningData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DeadReckoningData;

    return-object p1
.end method

.method public getDeadReckoningDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    return-object v0
.end method

.method public getDeadReckoningDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$DeadReckoningDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DeadReckoningDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorBatch;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorBatch;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDefaultInstanceForType()Lcom/google/android/projection/proto/Protos$SensorBatch;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnosticsData(I)Lcom/google/android/projection/proto/Protos$DiagnosticsData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    return-object p1
.end method

.method public getDiagnosticsDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    return-object v0
.end method

.method public getDiagnosticsDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$DiagnosticsDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DiagnosticsDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    return-object v0
.end method

.method public getDoorData(I)Lcom/google/android/projection/proto/Protos$DoorData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DoorData;

    return-object p1
.end method

.method public getDoorDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    return-object v0
.end method

.method public getDoorDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$DoorDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DoorDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    return-object v0
.end method

.method public getDrivingStatusData(I)Lcom/google/android/projection/proto/Protos$DrivingStatusData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    return-object p1
.end method

.method public getDrivingStatusDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    return-object v0
.end method

.method public getDrivingStatusDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$DrivingStatusDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$DrivingStatusDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    return-object v0
.end method

.method public getEnvironmentData(I)Lcom/google/android/projection/proto/Protos$EnvironmentData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$EnvironmentData;

    return-object p1
.end method

.method public getEnvironmentDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    return-object v0
.end method

.method public getEnvironmentDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$EnvironmentDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$EnvironmentDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    return-object v0
.end method

.method public getFuelData(I)Lcom/google/android/projection/proto/Protos$FuelData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$FuelData;

    return-object p1
.end method

.method public getFuelDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    return-object v0
.end method

.method public getFuelDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$FuelDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$FuelDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    return-object v0
.end method

.method public getGearData(I)Lcom/google/android/projection/proto/Protos$GearData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GearData;

    return-object p1
.end method

.method public getGearDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    return-object v0
.end method

.method public getGearDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$GearDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GearDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    return-object v0
.end method

.method public getGpsSatelliteData(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    return-object p1
.end method

.method public getGpsSatelliteDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    return-object v0
.end method

.method public getGpsSatelliteDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GpsSatelliteDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    return-object v0
.end method

.method public getGyroscopeData(I)Lcom/google/android/projection/proto/Protos$GyroscopeData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GyroscopeData;

    return-object p1
.end method

.method public getGyroscopeDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    return-object v0
.end method

.method public getGyroscopeDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$GyroscopeDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$GyroscopeDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    return-object v0
.end method

.method public getHvacData(I)Lcom/google/android/projection/proto/Protos$HvacData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HvacData;

    return-object p1
.end method

.method public getHvacDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    return-object v0
.end method

.method public getHvacDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$HvacDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$HvacDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    return-object v0
.end method

.method public getLightData(I)Lcom/google/android/projection/proto/Protos$LightData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightData;

    return-object p1
.end method

.method public getLightDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    return-object v0
.end method

.method public getLightDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LightDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    return-object v0
.end method

.method public getLocationData(I)Lcom/google/android/projection/proto/Protos$LocationData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LocationData;

    return-object p1
.end method

.method public getLocationDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    return-object v0
.end method

.method public getLocationDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$LocationDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$LocationDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    return-object v0
.end method

.method public getNightModeData(I)Lcom/google/android/projection/proto/Protos$NightModeData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NightModeData;

    return-object p1
.end method

.method public getNightModeDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    return-object v0
.end method

.method public getNightModeDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$NightModeDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$NightModeDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    return-object v0
.end method

.method public getOdometerData(I)Lcom/google/android/projection/proto/Protos$OdometerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$OdometerData;

    return-object p1
.end method

.method public getOdometerDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    return-object v0
.end method

.method public getOdometerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$OdometerDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$OdometerDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    return-object v0
.end method

.method public getParkingBrakeData(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    return-object p1
.end method

.method public getParkingBrakeDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    return-object v0
.end method

.method public getParkingBrakeDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$ParkingBrakeDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/android/projection/proto/Protos$SensorBatch;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPassengerData(I)Lcom/google/android/projection/proto/Protos$PassengerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PassengerData;

    return-object p1
.end method

.method public getPassengerDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    return-object v0
.end method

.method public getPassengerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$PassengerDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$PassengerDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    return-object v0
.end method

.method public getRpmData(I)Lcom/google/android/projection/proto/Protos$RpmData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RpmData;

    return-object p1
.end method

.method public getRpmDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    return-object v0
.end method

.method public getRpmDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$RpmDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$RpmDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_3
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_4
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v0

    :goto_5
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move v1, v0

    :goto_6
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    move v1, v0

    :goto_7
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move v1, v0

    :goto_8
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x9

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    move v1, v0

    :goto_9
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0xa

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    move v1, v0

    :goto_a
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_b
    move v1, v0

    :goto_b
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0xc

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    move v1, v0

    :goto_c
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0xd

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_d
    move v1, v0

    :goto_d
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0xe

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_e
    move v1, v0

    :goto_e
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0xf

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_f
    move v1, v0

    :goto_f
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_10

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x10

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_10
    move v1, v0

    :goto_10
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_11

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x11

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_11
    move v1, v0

    :goto_11
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_12

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x12

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_12
    move v1, v0

    :goto_12
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_13

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x13

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_13
    move v1, v0

    :goto_13
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_14

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x14

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_14
    move v1, v0

    :goto_14
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_15

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x15

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_15
    move v1, v0

    :goto_15
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_16

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x16

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_16
    move v1, v0

    :goto_16
    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_17

    iget-object v3, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/16 v4, 0x17

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x18

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSpeedData(I)Lcom/google/android/projection/proto/Protos$SpeedData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SpeedData;

    return-object p1
.end method

.method public getSpeedDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    return-object v0
.end method

.method public getSpeedDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$SpeedDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$SpeedDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    return-object v0
.end method

.method public getTirePressureData(I)Lcom/google/android/projection/proto/Protos$TirePressureData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TirePressureData;

    return-object p1
.end method

.method public getTirePressureDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    return-object v0
.end method

.method public getTirePressureDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$TirePressureDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TirePressureDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    return-object v0
.end method

.method public getTollCardData(I)Lcom/google/android/projection/proto/Protos$TollCardData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TollCardData;

    return-object p1
.end method

.method public getTollCardDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    return-object v0
.end method

.method public getTollCardDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$TollCardDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TollCardDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    return-object v0
.end method

.method public getTrailerData(I)Lcom/google/android/projection/proto/Protos$TrailerData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TrailerData;

    return-object p1
.end method

.method public getTrailerDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    return-object v0
.end method

.method public getTrailerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$TrailerDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/Protos$TrailerDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVehicleEnergyModelData(I)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;

    return-object p1
.end method

.method public getVehicleEnergyModelDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    return-object v0
.end method

.method public getVehicleEnergyModelDataOrBuilder(I)Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelDataOrBuilder;

    return-object p1
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

    iget-object v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLocationDataCount()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x25

    const/4 v2, 0x1

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLocationDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassDataCount()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x25

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedDataCount()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x25

    const/4 v2, 0x3

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmDataCount()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x25

    const/4 v2, 0x4

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerDataCount()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x25

    const/4 v2, 0x5

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getFuelDataCount()I

    move-result v1

    if-lez v1, :cond_6

    const/16 v1, 0x25

    const/4 v2, 0x6

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getFuelDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeDataCount()I

    move-result v1

    if-lez v1, :cond_7

    const/16 v1, 0x25

    const/4 v2, 0x7

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearDataCount()I

    move-result v1

    if-lez v1, :cond_8

    const/16 v1, 0x25

    const/16 v2, 0x8

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDiagnosticsDataCount()I

    move-result v1

    if-lez v1, :cond_9

    const/16 v1, 0x25

    const/16 v2, 0x9

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDiagnosticsDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getNightModeDataCount()I

    move-result v1

    if-lez v1, :cond_a

    const/16 v1, 0x25

    const/16 v2, 0xa

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getNightModeDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getEnvironmentDataCount()I

    move-result v1

    if-lez v1, :cond_b

    const/16 v1, 0x25

    const/16 v2, 0xb

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getEnvironmentDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getHvacDataCount()I

    move-result v1

    if-lez v1, :cond_c

    const/16 v1, 0x25

    const/16 v2, 0xc

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getHvacDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusDataCount()I

    move-result v1

    if-lez v1, :cond_d

    const/16 v1, 0x25

    const/16 v2, 0xd

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDeadReckoningDataCount()I

    move-result v1

    if-lez v1, :cond_e

    const/16 v1, 0x25

    const/16 v2, 0xe

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDeadReckoningDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getPassengerDataCount()I

    move-result v1

    if-lez v1, :cond_f

    const/16 v1, 0x25

    const/16 v2, 0xf

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getPassengerDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDoorDataCount()I

    move-result v1

    if-lez v1, :cond_10

    const/16 v1, 0x25

    const/16 v2, 0x10

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDoorDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLightDataCount()I

    move-result v1

    if-lez v1, :cond_11

    const/16 v1, 0x25

    const/16 v2, 0x11

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLightDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTirePressureDataCount()I

    move-result v1

    if-lez v1, :cond_12

    const/16 v1, 0x25

    const/16 v2, 0x12

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTirePressureDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getAccelerometerDataCount()I

    move-result v1

    if-lez v1, :cond_13

    const/16 v1, 0x25

    const/16 v2, 0x13

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getAccelerometerDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGyroscopeDataCount()I

    move-result v1

    if-lez v1, :cond_14

    const/16 v1, 0x25

    const/16 v2, 0x14

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGyroscopeDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGpsSatelliteDataCount()I

    move-result v1

    if-lez v1, :cond_15

    const/16 v1, 0x25

    const/16 v2, 0x15

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGpsSatelliteDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTollCardDataCount()I

    move-result v1

    if-lez v1, :cond_16

    const/16 v1, 0x25

    const/16 v2, 0x16

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTollCardDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getVehicleEnergyModelDataCount()I

    move-result v1

    if-lez v1, :cond_17

    const/16 v1, 0x25

    const/16 v2, 0x17

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getVehicleEnergyModelDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTrailerDataCount()I

    move-result v1

    if-lez v1, :cond_18

    const/16 v1, 0x25

    const/16 v2, 0x18

    const/16 v3, 0x35

    invoke-static {v0, v1, v2, v3}, Landroid/app/m;->D(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTrailerDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v1
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
    .locals 4

    iget-byte v0, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLocationDataCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLocationData(I)Lcom/google/android/projection/proto/Protos$LocationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$LocationData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassDataCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$CompassData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedDataCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedData(I)Lcom/google/android/projection/proto/Protos$SpeedData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$SpeedData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmDataCount()I

    move-result v3

    if-ge v0, v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmData(I)Lcom/google/android/projection/proto/Protos$RpmData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$RpmData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerDataCount()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerData(I)Lcom/google/android/projection/proto/Protos$OdometerData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$OdometerData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeDataCount()I

    move-result v3

    if-ge v0, v3, :cond_d

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeData(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_c

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    move v0, v2

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearDataCount()I

    move-result v3

    if-ge v0, v3, :cond_f

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearData(I)Lcom/google/android/projection/proto/Protos$GearData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$GearData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_e

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v2

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusDataCount()I

    move-result v3

    if-ge v0, v3, :cond_11

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusData(I)Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$DrivingStatusData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_10

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    move v0, v2

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGpsSatelliteDataCount()I

    move-result v3

    if-ge v0, v3, :cond_13

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGpsSatelliteData(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_12

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    move v0, v2

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTollCardDataCount()I

    move-result v3

    if-ge v0, v3, :cond_15

    invoke-virtual {p0, v0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getTollCardData(I)Lcom/google/android/projection/proto/Protos$TollCardData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$TollCardData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_14

    iput-byte v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v2

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    iput-byte v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorBatch;->newBuilder()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/android/projection/proto/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->newBuilderForType()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->newBuilderForType()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/android/projection/proto/Protos$SensorBatch;

    invoke-direct {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorBatch;->DEFAULT_INSTANCE:Lcom/google/android/projection/proto/Protos$SensorBatch;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;-><init>(Lcom/google/android/projection/proto/Protos$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;->mergeFrom(Lcom/google/android/projection/proto/Protos$SensorBatch;)Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/proto/Protos$SensorBatch;->toBuilder()Lcom/google/android/projection/proto/Protos$SensorBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->locationData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->compassData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->speedData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->rpmData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->odometerData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_5
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->fuelData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->parkingBrakeData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    move v1, v0

    :goto_7
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gearData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    move v1, v0

    :goto_8
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->diagnosticsData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->nightModeData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    move v1, v0

    :goto_a
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->environmentData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    move v1, v0

    :goto_b
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->hvacData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_b
    move v1, v0

    :goto_c
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->drivingStatusData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0xd

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    move v1, v0

    :goto_d
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->deadReckoningData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0xe

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_d
    move v1, v0

    :goto_e
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->passengerData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0xf

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_e
    move v1, v0

    :goto_f
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->doorData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x10

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_f
    move v1, v0

    :goto_10
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->lightData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x11

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_10
    move v1, v0

    :goto_11
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tirePressureData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x12

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_11
    move v1, v0

    :goto_12
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->accelerometerData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x13

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_12
    move v1, v0

    :goto_13
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gyroscopeData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x14

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_13
    move v1, v0

    :goto_14
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->gpsSatelliteData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x15

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_14
    move v1, v0

    :goto_15
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->tollCardData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x16

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_15
    move v1, v0

    :goto_16
    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    iget-object v2, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->vehicleEnergyModelData_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x17

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_16
    :goto_17
    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/projection/proto/Protos$SensorBatch;->trailerData_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/16 v2, 0x18

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_17
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
