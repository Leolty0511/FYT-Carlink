.class public final enum Lcom/google/android/projection/proto/Protos$SensorType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/projection/proto/Protos$SensorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final enum SENSOR_ACCELEROMETER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_ACCELEROMETER_DATA_VALUE:I = 0x13

.field public static final enum SENSOR_COMPASS:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_COMPASS_VALUE:I = 0x2

.field public static final enum SENSOR_DEAD_RECKONING_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_DEAD_RECKONING_DATA_VALUE:I = 0xe

.field public static final enum SENSOR_DOOR_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_DOOR_DATA_VALUE:I = 0x10

.field public static final enum SENSOR_DRIVING_STATUS_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_DRIVING_STATUS_DATA_VALUE:I = 0xd

.field public static final enum SENSOR_ENVIRONMENT_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_ENVIRONMENT_DATA_VALUE:I = 0xb

.field public static final enum SENSOR_FUEL:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_FUEL_VALUE:I = 0x6

.field public static final enum SENSOR_GEAR:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_GEAR_VALUE:I = 0x8

.field public static final enum SENSOR_GPS_SATELLITE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_GPS_SATELLITE_DATA_VALUE:I = 0x15

.field public static final enum SENSOR_GYROSCOPE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_GYROSCOPE_DATA_VALUE:I = 0x14

.field public static final enum SENSOR_HVAC_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_HVAC_DATA_VALUE:I = 0xc

.field public static final enum SENSOR_LIGHT_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_LIGHT_DATA_VALUE:I = 0x11

.field public static final enum SENSOR_LOCATION:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_LOCATION_VALUE:I = 0x1

.field public static final enum SENSOR_NIGHT_MODE:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_NIGHT_MODE_VALUE:I = 0xa

.field public static final enum SENSOR_OBDII_DIAGNOSTIC_CODE:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_OBDII_DIAGNOSTIC_CODE_VALUE:I = 0x9

.field public static final enum SENSOR_ODOMETER:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_ODOMETER_VALUE:I = 0x5

.field public static final enum SENSOR_PARKING_BRAKE:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_PARKING_BRAKE_VALUE:I = 0x7

.field public static final enum SENSOR_PASSENGER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_PASSENGER_DATA_VALUE:I = 0xf

.field public static final enum SENSOR_RPM:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_RPM_VALUE:I = 0x4

.field public static final enum SENSOR_SPEED:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_SPEED_VALUE:I = 0x3

.field public static final enum SENSOR_TIRE_PRESSURE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_TIRE_PRESSURE_DATA_VALUE:I = 0x12

.field public static final enum SENSOR_TOLL_CARD:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_TOLL_CARD_VALUE:I = 0x16

.field public static final enum SENSOR_TRAILER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_TRAILER_DATA_VALUE:I = 0x18

.field public static final enum SENSOR_VEHICLE_ENERGY_MODEL_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

.field public static final SENSOR_VEHICLE_ENERGY_MODEL_DATA_VALUE:I = 0x17

.field private static final VALUES:[Lcom/google/android/projection/proto/Protos$SensorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$SensorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/android/projection/proto/Protos$SensorType;
    .locals 3

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/projection/proto/Protos$SensorType;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_LOCATION:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_COMPASS:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_SPEED:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_RPM:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ODOMETER:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_FUEL:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 32
    .line 33
    aput-object v2, v0, v1

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_PARKING_BRAKE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 37
    .line 38
    aput-object v2, v0, v1

    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GEAR:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_OBDII_DIAGNOSTIC_CODE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    const/16 v1, 0x9

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_NIGHT_MODE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 54
    .line 55
    aput-object v2, v0, v1

    .line 56
    .line 57
    const/16 v1, 0xa

    .line 58
    .line 59
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ENVIRONMENT_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    const/16 v1, 0xb

    .line 64
    .line 65
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_HVAC_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 66
    .line 67
    aput-object v2, v0, v1

    .line 68
    .line 69
    const/16 v1, 0xc

    .line 70
    .line 71
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DRIVING_STATUS_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 72
    .line 73
    aput-object v2, v0, v1

    .line 74
    .line 75
    const/16 v1, 0xd

    .line 76
    .line 77
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DEAD_RECKONING_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 78
    .line 79
    aput-object v2, v0, v1

    .line 80
    .line 81
    const/16 v1, 0xe

    .line 82
    .line 83
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_PASSENGER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 84
    .line 85
    aput-object v2, v0, v1

    .line 86
    .line 87
    const/16 v1, 0xf

    .line 88
    .line 89
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DOOR_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 90
    .line 91
    aput-object v2, v0, v1

    .line 92
    .line 93
    const/16 v1, 0x10

    .line 94
    .line 95
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_LIGHT_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 96
    .line 97
    aput-object v2, v0, v1

    .line 98
    .line 99
    const/16 v1, 0x11

    .line 100
    .line 101
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TIRE_PRESSURE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 102
    .line 103
    aput-object v2, v0, v1

    .line 104
    .line 105
    const/16 v1, 0x12

    .line 106
    .line 107
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ACCELEROMETER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 108
    .line 109
    aput-object v2, v0, v1

    .line 110
    .line 111
    const/16 v1, 0x13

    .line 112
    .line 113
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GYROSCOPE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 114
    .line 115
    aput-object v2, v0, v1

    .line 116
    .line 117
    const/16 v1, 0x14

    .line 118
    .line 119
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GPS_SATELLITE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 120
    .line 121
    aput-object v2, v0, v1

    .line 122
    .line 123
    const/16 v1, 0x15

    .line 124
    .line 125
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TOLL_CARD:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 126
    .line 127
    aput-object v2, v0, v1

    .line 128
    .line 129
    const/16 v1, 0x16

    .line 130
    .line 131
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_VEHICLE_ENERGY_MODEL_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 132
    .line 133
    aput-object v2, v0, v1

    .line 134
    .line 135
    const/16 v1, 0x17

    .line 136
    .line 137
    sget-object v2, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TRAILER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 138
    .line 139
    aput-object v2, v0, v1

    .line 140
    .line 141
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 2
    .line 3
    const-string v1, "SENSOR_LOCATION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_LOCATION:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 13
    .line 14
    const-string v1, "SENSOR_COMPASS"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_COMPASS:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 23
    .line 24
    const-string v1, "SENSOR_SPEED"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_SPEED:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 33
    .line 34
    const-string v1, "SENSOR_RPM"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_RPM:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 43
    .line 44
    const-string v1, "SENSOR_ODOMETER"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ODOMETER:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 51
    .line 52
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 53
    .line 54
    const-string v1, "SENSOR_FUEL"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_FUEL:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 61
    .line 62
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 63
    .line 64
    const-string v1, "SENSOR_PARKING_BRAKE"

    .line 65
    .line 66
    const/4 v3, 0x7

    .line 67
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_PARKING_BRAKE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 71
    .line 72
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 73
    .line 74
    const-string v1, "SENSOR_GEAR"

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GEAR:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 82
    .line 83
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 84
    .line 85
    const-string v1, "SENSOR_OBDII_DIAGNOSTIC_CODE"

    .line 86
    .line 87
    const/16 v3, 0x9

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_OBDII_DIAGNOSTIC_CODE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 93
    .line 94
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 95
    .line 96
    const-string v1, "SENSOR_NIGHT_MODE"

    .line 97
    .line 98
    const/16 v2, 0xa

    .line 99
    .line 100
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_NIGHT_MODE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 104
    .line 105
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 106
    .line 107
    const-string v1, "SENSOR_ENVIRONMENT_DATA"

    .line 108
    .line 109
    const/16 v3, 0xb

    .line 110
    .line 111
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ENVIRONMENT_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 115
    .line 116
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 117
    .line 118
    const-string v1, "SENSOR_HVAC_DATA"

    .line 119
    .line 120
    const/16 v2, 0xc

    .line 121
    .line 122
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_HVAC_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 126
    .line 127
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 128
    .line 129
    const-string v1, "SENSOR_DRIVING_STATUS_DATA"

    .line 130
    .line 131
    const/16 v3, 0xd

    .line 132
    .line 133
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DRIVING_STATUS_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 137
    .line 138
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 139
    .line 140
    const-string v1, "SENSOR_DEAD_RECKONING_DATA"

    .line 141
    .line 142
    const/16 v2, 0xe

    .line 143
    .line 144
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DEAD_RECKONING_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 148
    .line 149
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 150
    .line 151
    const-string v1, "SENSOR_PASSENGER_DATA"

    .line 152
    .line 153
    const/16 v3, 0xf

    .line 154
    .line 155
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 156
    .line 157
    .line 158
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_PASSENGER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 159
    .line 160
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 161
    .line 162
    const-string v1, "SENSOR_DOOR_DATA"

    .line 163
    .line 164
    const/16 v2, 0x10

    .line 165
    .line 166
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 167
    .line 168
    .line 169
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DOOR_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 170
    .line 171
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 172
    .line 173
    const-string v1, "SENSOR_LIGHT_DATA"

    .line 174
    .line 175
    const/16 v3, 0x11

    .line 176
    .line 177
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 178
    .line 179
    .line 180
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_LIGHT_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 181
    .line 182
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 183
    .line 184
    const-string v1, "SENSOR_TIRE_PRESSURE_DATA"

    .line 185
    .line 186
    const/16 v2, 0x12

    .line 187
    .line 188
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 189
    .line 190
    .line 191
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TIRE_PRESSURE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 192
    .line 193
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 194
    .line 195
    const-string v1, "SENSOR_ACCELEROMETER_DATA"

    .line 196
    .line 197
    const/16 v3, 0x13

    .line 198
    .line 199
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 200
    .line 201
    .line 202
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ACCELEROMETER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 203
    .line 204
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 205
    .line 206
    const-string v1, "SENSOR_GYROSCOPE_DATA"

    .line 207
    .line 208
    const/16 v2, 0x14

    .line 209
    .line 210
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 211
    .line 212
    .line 213
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GYROSCOPE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 214
    .line 215
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 216
    .line 217
    const-string v1, "SENSOR_GPS_SATELLITE_DATA"

    .line 218
    .line 219
    const/16 v3, 0x15

    .line 220
    .line 221
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 222
    .line 223
    .line 224
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GPS_SATELLITE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 225
    .line 226
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 227
    .line 228
    const-string v1, "SENSOR_TOLL_CARD"

    .line 229
    .line 230
    const/16 v2, 0x16

    .line 231
    .line 232
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 233
    .line 234
    .line 235
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TOLL_CARD:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 236
    .line 237
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 238
    .line 239
    const-string v1, "SENSOR_VEHICLE_ENERGY_MODEL_DATA"

    .line 240
    .line 241
    const/16 v3, 0x17

    .line 242
    .line 243
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 244
    .line 245
    .line 246
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_VEHICLE_ENERGY_MODEL_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 247
    .line 248
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType;

    .line 249
    .line 250
    const/16 v1, 0x17

    .line 251
    .line 252
    const/16 v2, 0x18

    .line 253
    .line 254
    const-string v3, "SENSOR_TRAILER_DATA"

    .line 255
    .line 256
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/projection/proto/Protos$SensorType;-><init>(Ljava/lang/String;II)V

    .line 257
    .line 258
    .line 259
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TRAILER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 260
    .line 261
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorType;->$values()[Lcom/google/android/projection/proto/Protos$SensorType;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->$VALUES:[Lcom/google/android/projection/proto/Protos$SensorType;

    .line 266
    .line 267
    new-instance v0, Lcom/google/android/projection/proto/Protos$SensorType$1;

    .line 268
    .line 269
    invoke-direct {v0}, Lcom/google/android/projection/proto/Protos$SensorType$1;-><init>()V

    .line 270
    .line 271
    .line 272
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 273
    .line 274
    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorType;->values()[Lcom/google/android/projection/proto/Protos$SensorType;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    sput-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->VALUES:[Lcom/google/android/projection/proto/Protos$SensorType;

    .line 279
    .line 280
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/projection/proto/Protos$SensorType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/google/android/projection/proto/Protos$SensorType;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TRAILER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_VEHICLE_ENERGY_MODEL_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TOLL_CARD:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GPS_SATELLITE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GYROSCOPE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ACCELEROMETER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_TIRE_PRESSURE_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_LIGHT_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DOOR_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_PASSENGER_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DEAD_RECKONING_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_DRIVING_STATUS_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_HVAC_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ENVIRONMENT_DATA:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_NIGHT_MODE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_OBDII_DIAGNOSTIC_CODE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_GEAR:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_PARKING_BRAKE:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_FUEL:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_ODOMETER:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_RPM:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_SPEED:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_COMPASS:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    sget-object p0, Lcom/google/android/projection/proto/Protos$SensorType;->SENSOR_LOCATION:Lcom/google/android/projection/proto/Protos$SensorType;

    .line 76
    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Landroid/renderscript/a;->j(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 7
    .line 8
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/android/projection/proto/Protos$SensorType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/android/projection/proto/Protos$SensorType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/android/projection/proto/Protos$SensorType;->forNumber(I)Lcom/google/android/projection/proto/Protos$SensorType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/android/projection/proto/Protos$SensorType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->VALUES:[Lcom/google/android/projection/proto/Protos$SensorType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/projection/proto/Protos$SensorType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/projection/proto/Protos$SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/projection/proto/Protos$SensorType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/projection/proto/Protos$SensorType;
    .locals 1

    sget-object v0, Lcom/google/android/projection/proto/Protos$SensorType;->$VALUES:[Lcom/google/android/projection/proto/Protos$SensorType;

    invoke-virtual {v0}, [Lcom/google/android/projection/proto/Protos$SensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/projection/proto/Protos$SensorType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/proto/Protos$SensorType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/google/android/projection/proto/Protos$SensorType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
