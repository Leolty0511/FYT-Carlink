.class public Lcom/google/android/projection/protocol/SensorSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;


# static fields
.field public static final GEAR_1:I = 0x1

.field public static final GEAR_10:I = 0xa

.field public static final GEAR_2:I = 0x2

.field public static final GEAR_3:I = 0x3

.field public static final GEAR_4:I = 0x4

.field public static final GEAR_5:I = 0x5

.field public static final GEAR_6:I = 0x6

.field public static final GEAR_7:I = 0x7

.field public static final GEAR_8:I = 0x8

.field public static final GEAR_9:I = 0x9

.field public static final GEAR_DRIVE:I = 0x64

.field public static final GEAR_NEUTRAL:I = 0x0

.field public static final GEAR_PARK:I = 0x65

.field public static final GEAR_REVERSE:I = 0x66

.field public static final LOCATION_CHARACTERIZATION_ACCELEROMETER_FUSION:I = 0x4

.field public static final LOCATION_CHARACTERIZATION_CAR_SPEED_FUSION:I = 0x40

.field public static final LOCATION_CHARACTERIZATION_COMPASS_FUSION:I = 0x8

.field public static final LOCATION_CHARACTERIZATION_DEAD_RECKONED:I = 0x80

.field public static final LOCATION_CHARACTERIZATION_GYROSCOPE_FUSION:I = 0x2

.field public static final LOCATION_CHARACTERIZATION_PRIOR_LOCATIONS:I = 0x1

.field public static final LOCATION_CHARACTERIZATION_RAW_GPS_ONLY:I = 0x100

.field public static final LOCATION_CHARACTERIZATION_STEERING_ANGLE_FUSION:I = 0x20

.field public static final LOCATION_CHARACTERIZATION_WHEEL_SPEED_FUSION:I = 0x10

.field private static final NOT_SET:I = -0x80000000

.field public static final SENSOR_TYPE_ACCELEROMETER_DATA:I = 0x13

.field public static final SENSOR_TYPE_COMPASS:I = 0x2

.field public static final SENSOR_TYPE_DEAD_RECKONING_DATA:I = 0xe

.field public static final SENSOR_TYPE_DOOR_DATA:I = 0x10

.field public static final SENSOR_TYPE_DRIVING_STATUS:I = 0xd

.field public static final SENSOR_TYPE_ENVIRONMENT:I = 0xb

.field public static final SENSOR_TYPE_FUEL:I = 0x6

.field public static final SENSOR_TYPE_GEAR:I = 0x8

.field public static final SENSOR_TYPE_GPS_SATELLITE_DATA:I = 0x15

.field public static final SENSOR_TYPE_GYROSCOPE_DATA:I = 0x14

.field public static final SENSOR_TYPE_HVAC:I = 0xc

.field public static final SENSOR_TYPE_LIGHT_DATA:I = 0x11

.field public static final SENSOR_TYPE_LOCATION:I = 0x1

.field public static final SENSOR_TYPE_NIGHT_MODE:I = 0xa

.field public static final SENSOR_TYPE_OBDII_DIAGNOSTIC_CODE:I = 0x9

.field public static final SENSOR_TYPE_ODOMETER:I = 0x5

.field public static final SENSOR_TYPE_PARKING_BRAKE:I = 0x7

.field public static final SENSOR_TYPE_PASSENGER_DATA:I = 0xf

.field public static final SENSOR_TYPE_RPM:I = 0x4

.field public static final SENSOR_TYPE_SPEED:I = 0x3

.field public static final SENSOR_TYPE_TIRE_PRESSURE_DATA:I = 0x12

.field public static final TAG:Ljava/lang/String; = "AHU.SENSOR"


# instance fields
.field private final mDefaultSupportedSensors:[I

.field private final mEvConnectorTypes:[I

.field private final mFuelTypes:[I

.field private final mLocationCharacterization:I

.field private mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mNativeSensorSource:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideBearingE6:I

.field private mOverrideDiagnostics:Lcom/google/protobuf/ByteString;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideDrivingStatus:I

.field private mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideGear:Lcom/google/android/projection/proto/Protos$Gear;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideGpsSatelliteData:Lcom/google/android/projection/proto/Protos$GpsSatelliteData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideHvacData:Lcom/google/android/projection/proto/Protos$HvacData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideKmsE1:I

.field private mOverrideNightMode:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverrideParkingBrake:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mOverridePitchE6:I

.field private mOverrideRollE6:I

.field private mOverrideRpmE3:I

.field private mOverrideSpeedE3:I

.field private final mSupportedSensors:[I


# direct methods
.method public constructor <init>([II[Lcom/google/android/projection/proto/Protos$FuelType;[Lcom/google/android/projection/proto/Protos$EvConnectorType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideSpeedE3:I

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideBearingE6:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverridePitchE6:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRollE6:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRpmE3:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideKmsE1:I

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideDrivingStatus:I

    .line 19
    .line 20
    const/16 v0, 0xf

    .line 21
    .line 22
    new-array v0, v0, [I

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mDefaultSupportedSensors:[I

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mSupportedSensors:[I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/google/android/projection/protocol/SensorSource;->mSupportedSensors:[I

    .line 35
    .line 36
    :goto_0
    iput p2, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationCharacterization:I

    .line 37
    .line 38
    array-length p1, p3

    .line 39
    new-array p1, p1, [I

    .line 40
    .line 41
    iput-object p1, p0, Lcom/google/android/projection/protocol/SensorSource;->mFuelTypes:[I

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    move p2, p1

    .line 45
    :goto_1
    array-length v0, p3

    .line 46
    if-ge p2, v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mFuelTypes:[I

    .line 49
    .line 50
    aget-object v1, p3, p2

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$FuelType;->getNumber()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    aput v1, v0, p2

    .line 57
    .line 58
    add-int/lit8 p2, p2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    array-length p2, p4

    .line 62
    new-array p2, p2, [I

    .line 63
    .line 64
    iput-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->mEvConnectorTypes:[I

    .line 65
    .line 66
    :goto_2
    array-length p2, p4

    .line 67
    if-ge p1, p2, :cond_2

    .line 68
    .line 69
    iget-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->mEvConnectorTypes:[I

    .line 70
    .line 71
    aget-object p3, p4, p1

    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/google/android/projection/proto/Protos$EvConnectorType;->getNumber()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    aput p3, p2, p1

    .line 78
    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    return-void

    .line 83
    :array_0
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xb
        0xc
        0xd
        0x13
        0x14
        0x15
    .end array-data
.end method

.method private static convertFloatArray([FF)[I
    .locals 3
    .param p0    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    aget v2, p0, v1

    .line 13
    .line 14
    mul-float/2addr v2, p1

    .line 15
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    aput v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method

.method private native nativeInit(IJI[I[I)I
.end method

.method private native nativeRegisterSensor(I)V
.end method

.method private native nativeReportAccelerometerData(ZIZIZI)I
.end method

.method private native nativeReportCompassData(IZIZI)I
.end method

.method private native nativeReportDeadReckoningData(ZI[I)I
.end method

.method private native nativeReportDiagnosticsData([B)I
.end method

.method private native nativeReportDoorData(ZZZZ[Z)I
.end method

.method private native nativeReportDrivingStatusData(I)I
.end method

.method private native nativeReportEnvironmentData(ZIZIZI)I
.end method

.method private native nativeReportFuelData(ZIZIZZ)I
.end method

.method private native nativeReportGearData(I)I
.end method

.method private native nativeReportGpsSatelliteData(IZI[I[I[Z[I[I)I
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native nativeReportGyroscopeData(ZIZIZI)I
.end method

.method private native nativeReportHvacData(ZIZI)I
.end method

.method private native nativeReportLightData(ZIZIZZ)I
.end method

.method private native nativeReportLocation(JIIZIZIZIZI)I
.end method

.method private native nativeReportNightModeData(Z)I
.end method

.method private native nativeReportOdometerData(IZI)I
.end method

.method private native nativeReportParkingBrakeData(Z)I
.end method

.method private native nativeReportPassengerData(Z)I
.end method

.method private native nativeReportRpmData(I)I
.end method

.method private native nativeReportSensorError(II)I
.end method

.method private native nativeReportSpeedData(IZZZI)I
.end method

.method private native nativeReportTirePressureData([I)I
.end method

.method private native nativeReportTollCardData(Z)I
.end method

.method private native nativeReportTrailerData([B)I
.end method

.method private native nativeReportVehicleEnergyModelData([B)I
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public create(IJ)Z
    .locals 7

    .line 1
    iget v4, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationCharacterization:I

    .line 2
    .line 3
    iget-object v5, p0, Lcom/google/android/projection/protocol/SensorSource;->mFuelTypes:[I

    .line 4
    .line 5
    iget-object v6, p0, Lcom/google/android/projection/protocol/SensorSource;->mEvConnectorTypes:[I

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move-wide v2, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->nativeInit(IJI[I[I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x0

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/projection/protocol/SensorSource;->mSupportedSensors:[I

    .line 18
    .line 19
    array-length p3, p1

    .line 20
    :goto_0
    if-ge p2, p3, :cond_0

    .line 21
    .line 22
    aget v0, p1, p2

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/google/android/projection/protocol/SensorSource;->nativeRegisterSensor(I)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1
    return p2
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/SensorSource;->nativeShutdown()V

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mNativeSensorSource:J

    return-wide v0
.end method

.method public injectForTest(Lcom/google/android/projection/proto/Protos$SensorBatch;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLocationDataCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getLocationData(I)Lcom/google/android/projection/proto/Protos$LocationData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/projection/protocol/SensorSource;->reportLocation(Landroid/location/Location;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedDataCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/high16 v3, -0x80000000

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedData(I)Lcom/google/android/projection/proto/Protos$SpeedData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SpeedData;->hasSpeedE3()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getSpeedData(I)Lcom/google/android/projection/proto/Protos$SpeedData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$SpeedData;->getSpeedE3()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideSpeedE3:I

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideSpeedE3:I

    .line 52
    .line 53
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassDataCount()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$CompassData;->hasBearingE6()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$CompassData;->getBearingE6()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideBearingE6:I

    .line 79
    .line 80
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverridePitchE6:I

    .line 81
    .line 82
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRollE6:I

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$CompassData;->hasPitchE6()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$CompassData;->getPitchE6()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverridePitchE6:I

    .line 103
    .line 104
    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$CompassData;->hasRollE6()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getCompassData(I)Lcom/google/android/projection/proto/Protos$CompassData;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$CompassData;->getRollE6()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRollE6:I

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    :goto_3
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideBearingE6:I

    .line 126
    .line 127
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverridePitchE6:I

    .line 128
    .line 129
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRollE6:I

    .line 130
    .line 131
    :cond_6
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmDataCount()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmData(I)Lcom/google/android/projection/proto/Protos$RpmData;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RpmData;->hasRpmE3()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getRpmData(I)Lcom/google/android/projection/proto/Protos$RpmData;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RpmData;->getRpmE3()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRpmE3:I

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    :goto_5
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRpmE3:I

    .line 160
    .line 161
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerDataCount()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_a

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerData(I)Lcom/google/android/projection/proto/Protos$OdometerData;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$OdometerData;->hasKmsE1()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_9

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_9
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getOdometerData(I)Lcom/google/android/projection/proto/Protos$OdometerData;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$OdometerData;->getKmsE1()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideKmsE1:I

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_a
    :goto_7
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideKmsE1:I

    .line 190
    .line 191
    :goto_8
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getFuelDataCount()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_b

    .line 196
    .line 197
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;

    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_b
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getFuelData(I)Lcom/google/android/projection/proto/Protos$FuelData;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;

    .line 205
    .line 206
    :goto_9
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeDataCount()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_d

    .line 211
    .line 212
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeData(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;->hasParkingBrake()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_c

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_c
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getParkingBrakeData(I)Lcom/google/android/projection/proto/Protos$ParkingBrakeData;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$ParkingBrakeData;->getParkingBrake()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideParkingBrake:Ljava/lang/Boolean;

    .line 236
    .line 237
    goto :goto_b

    .line 238
    :cond_d
    :goto_a
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideParkingBrake:Ljava/lang/Boolean;

    .line 239
    .line 240
    :goto_b
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearDataCount()I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_f

    .line 245
    .line 246
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearData(I)Lcom/google/android/projection/proto/Protos$GearData;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GearData;->hasGear()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_e

    .line 255
    .line 256
    goto :goto_c

    .line 257
    :cond_e
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGearData(I)Lcom/google/android/projection/proto/Protos$GearData;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GearData;->getGear()Lcom/google/android/projection/proto/Protos$Gear;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGear:Lcom/google/android/projection/proto/Protos$Gear;

    .line 266
    .line 267
    goto :goto_d

    .line 268
    :cond_f
    :goto_c
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGear:Lcom/google/android/projection/proto/Protos$Gear;

    .line 269
    .line 270
    :goto_d
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDiagnosticsDataCount()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_11

    .line 275
    .line 276
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDiagnosticsData(I)Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$DiagnosticsData;->hasDtc()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_10

    .line 285
    .line 286
    goto :goto_e

    .line 287
    :cond_10
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDiagnosticsData(I)Lcom/google/android/projection/proto/Protos$DiagnosticsData;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$DiagnosticsData;->getDtc()Lcom/google/protobuf/ByteString;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideDiagnostics:Lcom/google/protobuf/ByteString;

    .line 296
    .line 297
    goto :goto_f

    .line 298
    :cond_11
    :goto_e
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideDiagnostics:Lcom/google/protobuf/ByteString;

    .line 299
    .line 300
    :goto_f
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getNightModeDataCount()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_13

    .line 305
    .line 306
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getNightModeData(I)Lcom/google/android/projection/proto/Protos$NightModeData;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NightModeData;->hasNightMode()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_12

    .line 315
    .line 316
    goto :goto_10

    .line 317
    :cond_12
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getNightModeData(I)Lcom/google/android/projection/proto/Protos$NightModeData;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$NightModeData;->getNightMode()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideNightMode:Ljava/lang/Boolean;

    .line 330
    .line 331
    goto :goto_11

    .line 332
    :cond_13
    :goto_10
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideNightMode:Ljava/lang/Boolean;

    .line 333
    .line 334
    :goto_11
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getEnvironmentDataCount()I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-nez v0, :cond_14

    .line 339
    .line 340
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 341
    .line 342
    goto :goto_12

    .line 343
    :cond_14
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getEnvironmentData(I)Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 348
    .line 349
    :goto_12
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getHvacDataCount()I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-nez v0, :cond_15

    .line 354
    .line 355
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideHvacData:Lcom/google/android/projection/proto/Protos$HvacData;

    .line 356
    .line 357
    goto :goto_13

    .line 358
    :cond_15
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getHvacData(I)Lcom/google/android/projection/proto/Protos$HvacData;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideHvacData:Lcom/google/android/projection/proto/Protos$HvacData;

    .line 363
    .line 364
    :goto_13
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusDataCount()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_17

    .line 369
    .line 370
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusData(I)Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$DrivingStatusData;->hasStatus()Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-nez v0, :cond_16

    .line 379
    .line 380
    goto :goto_14

    .line 381
    :cond_16
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getDrivingStatusData(I)Lcom/google/android/projection/proto/Protos$DrivingStatusData;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$DrivingStatusData;->getStatus()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    iput v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideDrivingStatus:I

    .line 390
    .line 391
    goto :goto_15

    .line 392
    :cond_17
    :goto_14
    iput v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideDrivingStatus:I

    .line 393
    .line 394
    :goto_15
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getAccelerometerDataCount()I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-nez v0, :cond_18

    .line 399
    .line 400
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 401
    .line 402
    goto :goto_16

    .line 403
    :cond_18
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getAccelerometerData(I)Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 408
    .line 409
    :goto_16
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGyroscopeDataCount()I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-nez v0, :cond_19

    .line 414
    .line 415
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 416
    .line 417
    goto :goto_17

    .line 418
    :cond_19
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGyroscopeData(I)Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iput-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 423
    .line 424
    :goto_17
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGpsSatelliteDataCount()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-nez v0, :cond_1a

    .line 429
    .line 430
    iput-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGpsSatelliteData:Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    .line 431
    .line 432
    goto :goto_18

    .line 433
    :cond_1a
    invoke-virtual {p1, v2}, Lcom/google/android/projection/proto/Protos$SensorBatch;->getGpsSatelliteData(I)Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    .line 434
    .line 435
    .line 436
    move-result-object p1

    .line 437
    iput-object p1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGpsSatelliteData:Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    .line 438
    .line 439
    :goto_18
    return-void
.end method

.method public overrideNightModeData(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideNightMode:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportNightModeData(Z)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public reportAccelerometerData(ZFZFZF)V
    .locals 7

    .line 1
    float-to-double v0, p2

    .line 2
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    double-to-float p2, v0

    .line 9
    float-to-double v0, p4

    .line 10
    mul-double/2addr v0, v2

    .line 11
    double-to-float p4, v0

    .line 12
    float-to-double v0, p6

    .line 13
    mul-double/2addr v0, v2

    .line 14
    double-to-float p6, v0

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AccelerometerData;->hasAccelerationXE3()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$AccelerometerData;->getAccelerationXE3()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    :cond_0
    iget-object p3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/google/android/projection/proto/Protos$AccelerometerData;->hasAccelerationYE3()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    iget-object p4, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/google/android/projection/proto/Protos$AccelerometerData;->getAccelerationYE3()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    int-to-float p4, p4

    .line 47
    :cond_1
    iget-object p5, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 48
    .line 49
    invoke-virtual {p5}, Lcom/google/android/projection/proto/Protos$AccelerometerData;->hasAccelerationZE3()Z

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    if-eqz p5, :cond_2

    .line 54
    .line 55
    iget-object p6, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideAccelerometerData:Lcom/google/android/projection/proto/Protos$AccelerometerData;

    .line 56
    .line 57
    invoke-virtual {p6}, Lcom/google/android/projection/proto/Protos$AccelerometerData;->getAccelerationZE3()I

    .line 58
    .line 59
    .line 60
    move-result p6

    .line 61
    int-to-float p6, p6

    .line 62
    :cond_2
    move v1, p1

    .line 63
    move v3, p3

    .line 64
    move v5, p5

    .line 65
    float-to-int v2, p2

    .line 66
    float-to-int v4, p4

    .line 67
    float-to-int v6, p6

    .line 68
    move-object v0, p0

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportAccelerometerData(ZIZIZI)I

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public reportCompassData(IZIZI)V
    .locals 7

    .line 1
    int-to-double v0, p1

    .line 2
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    double-to-int p1, v0

    .line 9
    int-to-double v0, p3

    .line 10
    mul-double/2addr v0, v2

    .line 11
    double-to-int p3, v0

    .line 12
    int-to-double v0, p5

    .line 13
    mul-double/2addr v0, v2

    .line 14
    double-to-int p5, v0

    .line 15
    iget v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideBearingE6:I

    .line 16
    .line 17
    const/high16 v1, -0x80000000

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    iget p3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverridePitchE6:I

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    const/4 p2, 0x0

    .line 25
    if-eq p3, v1, :cond_0

    .line 26
    .line 27
    move p4, p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p4, p2

    .line 30
    :goto_0
    iget p5, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRollE6:I

    .line 31
    .line 32
    if-eq p5, v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move p1, p2

    .line 36
    :goto_1
    move v5, p1

    .line 37
    move v4, p3

    .line 38
    move v3, p4

    .line 39
    move v6, p5

    .line 40
    move v2, v0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v2, p1

    .line 43
    move v3, p2

    .line 44
    move v4, p3

    .line 45
    move v5, p4

    .line 46
    move v6, p5

    .line 47
    :goto_2
    move-object v1, p0

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportCompassData(IZIZI)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public reportDeadReckoningData(ZD[F)V
    .locals 7

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    .line 3
    mul-double/2addr p2, v0

    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    array-length v1, p4

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    new-array v2, v1, [I

    .line 11
    .line 12
    :goto_1
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    aget v3, p4, v0

    .line 15
    .line 16
    float-to-double v3, v3

    .line 17
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    mul-double/2addr v3, v5

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    long-to-int v3, v3

    .line 28
    aput v3, v2, v0

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    double-to-int p2, p2

    .line 34
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportDeadReckoningData(ZI[I)I

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public reportDiagnosticsData([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideDiagnostics:Lcom/google/protobuf/ByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportDiagnosticsData([B)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reportDoorData(ZZZZ[Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportDoorData(ZZZZ[Z)I

    return-void
.end method

.method public reportDrivingStatusData(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideDrivingStatus:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    move p1, v0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportDrivingStatusData(I)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public reportEnvironmentData(ZFZFZI)V
    .locals 7

    .line 1
    float-to-double v0, p2

    .line 2
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    long-to-int p2, v0

    .line 13
    float-to-double v0, p4

    .line 14
    mul-double/2addr v0, v2

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-int p4, v0

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$EnvironmentData;->hasTemperatureE3()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$EnvironmentData;->getTemperatureE3()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :cond_0
    iget-object p3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/google/android/projection/proto/Protos$EnvironmentData;->hasPressureE3()Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    iget-object p4, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 45
    .line 46
    invoke-virtual {p4}, Lcom/google/android/projection/proto/Protos$EnvironmentData;->getPressureE3()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    :cond_1
    iget-object p5, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 51
    .line 52
    invoke-virtual {p5}, Lcom/google/android/projection/proto/Protos$EnvironmentData;->hasRain()Z

    .line 53
    .line 54
    .line 55
    move-result p5

    .line 56
    if-eqz p5, :cond_2

    .line 57
    .line 58
    iget-object p4, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideEnvironmentData:Lcom/google/android/projection/proto/Protos$EnvironmentData;

    .line 59
    .line 60
    invoke-virtual {p4}, Lcom/google/android/projection/proto/Protos$EnvironmentData;->getRain()I

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    :cond_2
    move v1, p1

    .line 65
    move v2, p2

    .line 66
    move v3, p3

    .line 67
    move v4, p4

    .line 68
    move v5, p5

    .line 69
    move-object v0, p0

    .line 70
    move v6, p6

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportEnvironmentData(ZIZIZI)I

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public reportFuelData(ZIZIZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$FuelData;->hasFuelLevel()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$FuelData;->getFuelLevel()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/google/android/projection/proto/Protos$FuelData;->hasRange()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    iget-object p4, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;

    .line 26
    .line 27
    invoke-virtual {p4}, Lcom/google/android/projection/proto/Protos$FuelData;->getRange()I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    :cond_1
    iget-object p5, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;

    .line 32
    .line 33
    invoke-virtual {p5}, Lcom/google/android/projection/proto/Protos$FuelData;->hasLowFuelWarning()Z

    .line 34
    .line 35
    .line 36
    move-result p5

    .line 37
    if-eqz p5, :cond_2

    .line 38
    .line 39
    iget-object p6, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideFuelLevel:Lcom/google/android/projection/proto/Protos$FuelData;

    .line 40
    .line 41
    invoke-virtual {p6}, Lcom/google/android/projection/proto/Protos$FuelData;->getLowFuelWarning()Z

    .line 42
    .line 43
    .line 44
    move-result p6

    .line 45
    :cond_2
    move v1, p1

    .line 46
    move v2, p2

    .line 47
    move v3, p3

    .line 48
    move v4, p4

    .line 49
    move v5, p5

    .line 50
    move v6, p6

    .line 51
    move-object v0, p0

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportFuelData(ZIZIZZ)I

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public reportGearData(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGear:Lcom/google/android/projection/proto/Protos$Gear;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$Gear;->getNumber()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportGearData(I)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reportGpsSatelliteData(IZI[I[F[Z[F[F)V
    .locals 15
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v9, p0

    .line 2
    iget-object v0, v9, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGpsSatelliteData:Lcom/google/android/projection/proto/Protos$GpsSatelliteData;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->getNumberInUse()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->hasNumberInView()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->getNumberInView()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->getSatellitesCount()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-lez v5, :cond_3

    .line 26
    .line 27
    new-array v6, v5, [I

    .line 28
    .line 29
    new-array v7, v5, [I

    .line 30
    .line 31
    new-array v8, v5, [Z

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    invoke-virtual {v0, v10}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->getSatellites(I)Lcom/google/android/projection/proto/Protos$GpsSatellite;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-virtual {v11}, Lcom/google/android/projection/proto/Protos$GpsSatellite;->hasAzimuthE3()Z

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-eqz v11, :cond_0

    .line 43
    .line 44
    new-array v3, v5, [I

    .line 45
    .line 46
    new-array v11, v5, [I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v11, v3

    .line 50
    :goto_0
    if-ge v10, v5, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v10}, Lcom/google/android/projection/proto/Protos$GpsSatelliteData;->getSatellites(I)Lcom/google/android/projection/proto/Protos$GpsSatellite;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    invoke-virtual {v12}, Lcom/google/android/projection/proto/Protos$GpsSatellite;->getPrn()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    aput v13, v6, v10

    .line 61
    .line 62
    invoke-virtual {v12}, Lcom/google/android/projection/proto/Protos$GpsSatellite;->getSnrE3()I

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    aput v13, v7, v10

    .line 67
    .line 68
    invoke-virtual {v12}, Lcom/google/android/projection/proto/Protos$GpsSatellite;->getUsedInFix()Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    aput-boolean v13, v8, v10

    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    if-eqz v11, :cond_1

    .line 77
    .line 78
    invoke-virtual {v12}, Lcom/google/android/projection/proto/Protos$GpsSatellite;->getAzimuthE3()I

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    aput v13, v3, v10

    .line 83
    .line 84
    invoke-virtual {v12}, Lcom/google/android/projection/proto/Protos$GpsSatellite;->getElevationE3()I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    aput v12, v11, v10

    .line 89
    .line 90
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-object v0, v3

    .line 94
    move-object v3, v6

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move-object v0, v3

    .line 97
    move-object v7, v0

    .line 98
    move-object v8, v7

    .line 99
    move-object v11, v8

    .line 100
    :goto_1
    move-object v5, v7

    .line 101
    move-object v6, v8

    .line 102
    move-object v8, v11

    .line 103
    move-object v7, v0

    .line 104
    move v14, v4

    .line 105
    move-object v4, v3

    .line 106
    move v3, v14

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object v4, v3

    .line 109
    move-object v5, v4

    .line 110
    move-object v6, v5

    .line 111
    move-object v7, v6

    .line 112
    move-object v8, v7

    .line 113
    move/from16 v3, p3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 117
    .line 118
    move-object/from16 v1, p5

    .line 119
    .line 120
    invoke-static {v1, v0}, Lcom/google/android/projection/protocol/SensorSource;->convertFloatArray([FF)[I

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    move-object/from16 v2, p7

    .line 125
    .line 126
    invoke-static {v2, v0}, Lcom/google/android/projection/protocol/SensorSource;->convertFloatArray([FF)[I

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    move-object/from16 v3, p8

    .line 131
    .line 132
    invoke-static {v3, v0}, Lcom/google/android/projection/protocol/SensorSource;->convertFloatArray([FF)[I

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    move/from16 v3, p3

    .line 137
    .line 138
    move-object/from16 v4, p4

    .line 139
    .line 140
    move-object/from16 v6, p6

    .line 141
    .line 142
    move-object v8, v0

    .line 143
    move-object v5, v1

    .line 144
    move-object v7, v2

    .line 145
    move/from16 v1, p1

    .line 146
    .line 147
    move/from16 v2, p2

    .line 148
    .line 149
    :goto_2
    move-object v0, p0

    .line 150
    invoke-direct/range {v0 .. v8}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportGpsSatelliteData(IZI[I[I[Z[I[I)I

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public reportGyroscopeData(ZFZFZF)V
    .locals 7

    .line 1
    float-to-double v0, p2

    .line 2
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    double-to-float p2, v0

    .line 9
    float-to-double v0, p4

    .line 10
    mul-double/2addr v0, v2

    .line 11
    double-to-float p4, v0

    .line 12
    float-to-double v0, p6

    .line 13
    mul-double/2addr v0, v2

    .line 14
    double-to-float p6, v0

    .line 15
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$GyroscopeData;->hasRotationSpeedXE3()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$GyroscopeData;->getRotationSpeedXE3()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    :cond_0
    iget-object p3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/google/android/projection/proto/Protos$GyroscopeData;->hasRotationSpeedYE3()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    iget-object p4, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 41
    .line 42
    invoke-virtual {p4}, Lcom/google/android/projection/proto/Protos$GyroscopeData;->getRotationSpeedYE3()I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    int-to-float p4, p4

    .line 47
    :cond_1
    iget-object p5, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 48
    .line 49
    invoke-virtual {p5}, Lcom/google/android/projection/proto/Protos$GyroscopeData;->hasRotationSpeedZE3()Z

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    if-eqz p5, :cond_2

    .line 54
    .line 55
    iget-object p6, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideGyroscopeData:Lcom/google/android/projection/proto/Protos$GyroscopeData;

    .line 56
    .line 57
    invoke-virtual {p6}, Lcom/google/android/projection/proto/Protos$GyroscopeData;->getRotationSpeedZE3()I

    .line 58
    .line 59
    .line 60
    move-result p6

    .line 61
    int-to-float p6, p6

    .line 62
    :cond_2
    move v1, p1

    .line 63
    move v3, p3

    .line 64
    move v5, p5

    .line 65
    float-to-int v2, p2

    .line 66
    float-to-int v4, p4

    .line 67
    float-to-int v6, p6

    .line 68
    move-object v0, p0

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportGyroscopeData(ZIZIZI)I

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public reportHvacData(ZFZF)V
    .locals 4

    .line 1
    float-to-double v0, p2

    .line 2
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    long-to-int p2, v0

    .line 13
    float-to-double v0, p4

    .line 14
    mul-double/2addr v0, v2

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-int p4, v0

    .line 20
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideHvacData:Lcom/google/android/projection/proto/Protos$HvacData;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$HvacData;->hasTargetTemperatureE3()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p2, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideHvacData:Lcom/google/android/projection/proto/Protos$HvacData;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$HvacData;->getTargetTemperatureE3()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    :cond_0
    iget-object p3, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideHvacData:Lcom/google/android/projection/proto/Protos$HvacData;

    .line 37
    .line 38
    invoke-virtual {p3}, Lcom/google/android/projection/proto/Protos$HvacData;->hasCurrentTemperatureE3()Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    iget-object p4, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideHvacData:Lcom/google/android/projection/proto/Protos$HvacData;

    .line 45
    .line 46
    invoke-virtual {p4}, Lcom/google/android/projection/proto/Protos$HvacData;->getCurrentTemperatureE3()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportHvacData(ZIZI)I

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public reportLightData(ZIZIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportLightData(ZIZIZZ)I

    return-void
.end method

.method public reportLocation(Landroid/location/Location;)V
    .locals 13
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide v2, 0x416312d000000000L    # 1.0E7

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    long-to-int v0, v0

    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    mul-double/2addr v4, v2

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    long-to-int v1, v1

    .line 32
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    float-to-double v3, v3

    .line 41
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    mul-double/2addr v3, v5

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    long-to-int v3, v3

    .line 52
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    .line 57
    .line 58
    .line 59
    move-result-wide v7

    .line 60
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 61
    .line 62
    mul-double/2addr v7, v9

    .line 63
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    long-to-int v7, v7

    .line 68
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    float-to-double v9, v9

    .line 77
    mul-double/2addr v9, v5

    .line 78
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    long-to-int v5, v5

    .line 83
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    float-to-double v9, v9

    .line 92
    const-wide v11, 0x412e848000000000L    # 1000000.0

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    mul-double/2addr v9, v11

    .line 98
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 99
    .line 100
    .line 101
    move-result-wide v9

    .line 102
    long-to-int v9, v9

    .line 103
    move v10, v5

    .line 104
    move v11, v6

    .line 105
    move v12, v9

    .line 106
    move v5, v2

    .line 107
    move v6, v3

    .line 108
    move v9, v8

    .line 109
    move v3, v0

    .line 110
    move v8, v7

    .line 111
    move v7, v4

    .line 112
    move v4, v1

    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLatitudeE7()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/4 v1, 0x0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$LocationData;->getLatitudeE7()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    move v0, v1

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$LocationData;->hasLongitudeE7()Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_2

    .line 141
    .line 142
    iget-object v2, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$LocationData;->getLongitudeE7()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    goto :goto_1

    .line 149
    :cond_2
    move v2, v1

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAccuracyE3()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    iget-object v4, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAccuracyE3()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_3

    .line 163
    .line 164
    iget-object v4, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$LocationData;->getAccuracyE3()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    goto :goto_2

    .line 171
    :cond_3
    move v4, v1

    .line 172
    :goto_2
    iget-object v5, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAltitudeE2()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    iget-object v6, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 179
    .line 180
    invoke-virtual {v6}, Lcom/google/android/projection/proto/Protos$LocationData;->hasAltitudeE2()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_4

    .line 185
    .line 186
    iget-object v6, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 187
    .line 188
    invoke-virtual {v6}, Lcom/google/android/projection/proto/Protos$LocationData;->getAltitudeE2()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    goto :goto_3

    .line 193
    :cond_4
    move v6, v1

    .line 194
    :goto_3
    iget-object v7, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 195
    .line 196
    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$LocationData;->hasBearingE6()Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    iget-object v8, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 201
    .line 202
    invoke-virtual {v8}, Lcom/google/android/projection/proto/Protos$LocationData;->hasBearingE6()Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_5

    .line 207
    .line 208
    iget-object v8, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 209
    .line 210
    invoke-virtual {v8}, Lcom/google/android/projection/proto/Protos$LocationData;->getBearingE6()I

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    goto :goto_4

    .line 215
    :cond_5
    move v8, v1

    .line 216
    :goto_4
    iget-object v9, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 217
    .line 218
    invoke-virtual {v9}, Lcom/google/android/projection/proto/Protos$LocationData;->hasSpeedE3()Z

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    iget-object v10, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 223
    .line 224
    invoke-virtual {v10}, Lcom/google/android/projection/proto/Protos$LocationData;->hasSpeedE3()Z

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    if-eqz v10, :cond_6

    .line 229
    .line 230
    iget-object v1, p0, Lcom/google/android/projection/protocol/SensorSource;->mLocationOverride:Lcom/google/android/projection/proto/Protos$LocationData;

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/google/android/projection/proto/Protos$LocationData;->getSpeedE3()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    :cond_6
    move v10, v1

    .line 237
    move v11, v7

    .line 238
    move v12, v8

    .line 239
    move v7, v5

    .line 240
    move v8, v6

    .line 241
    move v5, v3

    .line 242
    move v6, v4

    .line 243
    move v3, v0

    .line 244
    move v4, v2

    .line 245
    :goto_5
    const-wide/16 v1, 0x0

    .line 246
    .line 247
    move-object v0, p0

    .line 248
    invoke-direct/range {v0 .. v12}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportLocation(JIIZIZIZIZI)I

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_7
    const-string v0, "AHU.SENSOR"

    .line 253
    .line 254
    const-string v1, "Location and mGpsOverride are both null."

    .line 255
    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public reportNightModeData(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideNightMode:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportNightModeData(Z)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reportOdometerData(DZD)V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 2
    .line 3
    mul-double/2addr p1, v0

    .line 4
    mul-double/2addr p4, v0

    .line 5
    iget v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideKmsE1:I

    .line 6
    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    int-to-double p1, v0

    .line 12
    :cond_0
    double-to-int p1, p1

    .line 13
    double-to-int p2, p4

    .line 14
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportOdometerData(IZI)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public reportParkingBrakeData(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideParkingBrake:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportParkingBrakeData(Z)I

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reportPassengerData(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportPassengerData(Z)I

    return-void
.end method

.method public reportRpmData(D)V
    .locals 2

    .line 1
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-double/2addr p1, v0

    .line 7
    iget v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideRpmE3:I

    .line 8
    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    int-to-double p1, v0

    .line 14
    :cond_0
    double-to-int p1, p1

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportRpmData(I)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public reportSensorError(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportSensorError(II)I

    return-void
.end method

.method public reportSpeedData(FZZZI)V
    .locals 6

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    double-to-float p1, v0

    .line 9
    iget v0, p0, Lcom/google/android/projection/protocol/SensorSource;->mOverrideSpeedE3:I

    .line 10
    .line 11
    const/high16 v1, -0x80000000

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    int-to-float p1, v0

    .line 16
    :cond_0
    float-to-int v1, p1

    .line 17
    move-object v0, p0

    .line 18
    move v2, p2

    .line 19
    move v3, p3

    .line 20
    move v4, p4

    .line 21
    move v5, p5

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportSpeedData(IZZZI)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public reportTirePressureData([F)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    new-array v2, v1, [I

    .line 8
    .line 9
    :goto_1
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    aget v3, p1, v0

    .line 12
    .line 13
    float-to-double v3, v3

    .line 14
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 15
    .line 16
    mul-double/2addr v3, v5

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    long-to-int v3, v3

    .line 22
    aput v3, v2, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportTirePressureData([I)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public reportTollCardData(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportTollCardData(Z)I

    return-void
.end method

.method public reportTrailerData(Lcom/google/android/projection/proto/Protos$TrailerData;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportTrailerData([B)I

    return-void
.end method

.method public reportVehicleEnergyModelData(Lcom/google/android/projection/proto/EnergyModel$VehicleEnergyModelData;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/SensorSource;->nativeReportVehicleEnergyModelData([B)I

    return-void
.end method
