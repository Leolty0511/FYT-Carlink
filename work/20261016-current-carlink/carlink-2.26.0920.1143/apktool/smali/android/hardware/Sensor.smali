.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADDITIONAL_INFO_MASK:I = 0x40

.field private static final ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final DATA_INJECTION_MASK:I = 0x10

.field private static final DATA_INJECTION_SHIFT:I = 0x4

.field private static final DIRECT_CHANNEL_MASK:I = 0xc00

.field private static final DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final DIRECT_REPORT_MASK:I = 0x380

.field private static final DIRECT_REPORT_SHIFT:I = 0x7

.field private static final DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_ACCELEROMETER_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_uncalibrated"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT:Ljava/lang/String; = "android.sensor.low_latency_offbody_detect"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ACCELEROMETER_UNCALIBRATED:I = 0x23

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final TYPE_DYNAMIC_SENSOR_META:I = 0x20

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HEART_BEAT:I = 0x1f

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_LOW_LATENCY_OFFBODY_DETECT:I = 0x22

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MOTION_DETECT:I = 0x1e

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_POSE_6DOF:I = 0x1c

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field public static final TYPE_WRIST_TILT_GESTURE:I = 0x1a

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mId:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x5
        0x1
        0x1
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x10
        0x1
        0x1
        0x1
        0x2
        0x10
        0x1
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 1

    .line 1
    iget p0, p0, Landroid/hardware/Sensor;->mType:I

    .line 2
    .line 3
    const/16 v0, 0xb

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    return p0

    .line 13
    :cond_0
    sget-object p1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    .line 14
    .line 15
    array-length v0, p1

    .line 16
    if-lt p0, v0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x10

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    aget p0, p1, p0

    .line 22
    .line 23
    return p0
.end method

.method private setType(I)Z
    .locals 2

    .line 1
    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    .line 2
    .line 3
    const/16 v0, 0x1b

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    .line 8
    const/16 v0, 0x20

    .line 9
    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/16 v0, 0x22

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x23

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :pswitch_0
    const-string p1, "android.sensor.pick_up_gesture"

    .line 26
    .line 27
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 28
    .line 29
    return v1

    .line 30
    :pswitch_1
    const-string p1, "android.sensor.glance_gesture"

    .line 31
    .line 32
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 33
    .line 34
    return v1

    .line 35
    :pswitch_2
    const-string p1, "android.sensor.wake_gesture"

    .line 36
    .line 37
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 38
    .line 39
    return v1

    .line 40
    :pswitch_3
    const-string p1, "android.sensor.tilt_detector"

    .line 41
    .line 42
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 43
    .line 44
    return v1

    .line 45
    :pswitch_4
    const-string p1, "android.sensor.heart_rate"

    .line 46
    .line 47
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 48
    .line 49
    return v1

    .line 50
    :pswitch_5
    const-string p1, "android.sensor.geomagnetic_rotation_vector"

    .line 51
    .line 52
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 53
    .line 54
    return v1

    .line 55
    :pswitch_6
    const-string p1, "android.sensor.step_counter"

    .line 56
    .line 57
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 58
    .line 59
    return v1

    .line 60
    :pswitch_7
    const-string p1, "android.sensor.step_detector"

    .line 61
    .line 62
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 63
    .line 64
    return v1

    .line 65
    :pswitch_8
    const-string p1, "android.sensor.significant_motion"

    .line 66
    .line 67
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 68
    .line 69
    return v1

    .line 70
    :pswitch_9
    const-string p1, "android.sensor.gyroscope_uncalibrated"

    .line 71
    .line 72
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 73
    .line 74
    return v1

    .line 75
    :pswitch_a
    const-string p1, "android.sensor.game_rotation_vector"

    .line 76
    .line 77
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 78
    .line 79
    return v1

    .line 80
    :pswitch_b
    const-string p1, "android.sensor.magnetic_field_uncalibrated"

    .line 81
    .line 82
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 83
    .line 84
    return v1

    .line 85
    :pswitch_c
    const-string p1, "android.sensor.ambient_temperature"

    .line 86
    .line 87
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 88
    .line 89
    return v1

    .line 90
    :pswitch_d
    const-string p1, "android.sensor.relative_humidity"

    .line 91
    .line 92
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 93
    .line 94
    return v1

    .line 95
    :pswitch_e
    const-string p1, "android.sensor.rotation_vector"

    .line 96
    .line 97
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 98
    .line 99
    return v1

    .line 100
    :pswitch_f
    const-string p1, "android.sensor.linear_acceleration"

    .line 101
    .line 102
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 103
    .line 104
    return v1

    .line 105
    :pswitch_10
    const-string p1, "android.sensor.gravity"

    .line 106
    .line 107
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 108
    .line 109
    return v1

    .line 110
    :pswitch_11
    const-string p1, "android.sensor.proximity"

    .line 111
    .line 112
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 113
    .line 114
    return v1

    .line 115
    :pswitch_12
    const-string p1, "android.sensor.temperature"

    .line 116
    .line 117
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 118
    .line 119
    return v1

    .line 120
    :pswitch_13
    const-string p1, "android.sensor.pressure"

    .line 121
    .line 122
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 123
    .line 124
    return v1

    .line 125
    :pswitch_14
    const-string p1, "android.sensor.light"

    .line 126
    .line 127
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 128
    .line 129
    return v1

    .line 130
    :pswitch_15
    const-string p1, "android.sensor.gyroscope"

    .line 131
    .line 132
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 133
    .line 134
    return v1

    .line 135
    :pswitch_16
    const-string p1, "android.sensor.orientation"

    .line 136
    .line 137
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 138
    .line 139
    return v1

    .line 140
    :pswitch_17
    const-string p1, "android.sensor.magnetic_field"

    .line 141
    .line 142
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 143
    .line 144
    return v1

    .line 145
    :pswitch_18
    const-string p1, "android.sensor.accelerometer"

    .line 146
    .line 147
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 148
    .line 149
    return v1

    .line 150
    :cond_0
    const-string p1, "android.sensor.accelerometer_uncalibrated"

    .line 151
    .line 152
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 153
    .line 154
    return v1

    .line 155
    :cond_1
    const-string p1, "android.sensor.low_latency_offbody_detect"

    .line 156
    .line 157
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 158
    .line 159
    return v1

    .line 160
    :cond_2
    const-string p1, "android.sensor.dynamic_sensor_meta"

    .line 161
    .line 162
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 163
    .line 164
    return v1

    .line 165
    :cond_3
    const-string p1, "android.sensor.device_orientation"

    .line 166
    .line 167
    iput-object p1, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    .line 168
    .line 169
    return v1

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
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

.method private setUuid(JJ)V
    .locals 0

    long-to-int p1, p1

    iput p1, p0, Landroid/hardware/Sensor;->mId:I

    return-void
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getHighestDirectReportRateLevel()I
    .locals 2

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v0, v0, 0x380

    shr-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mId:I

    return v0
.end method

.method public getMaxDelay()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getReportingMode()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public isAdditionalInfoSupported()Z
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDataInjectionSupported()Z
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectChannelTypeSupported(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p1, p0, Landroid/hardware/Sensor;->mFlags:I

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0x800

    .line 12
    .line 13
    if-lez p1, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    :cond_1
    return v0

    .line 17
    :cond_2
    iget p1, p0, Landroid/hardware/Sensor;->mFlags:I

    .line 18
    .line 19
    and-int/lit16 p1, p1, 0x400

    .line 20
    .line 21
    if-lez p1, :cond_3

    .line 22
    .line 23
    move v0, v1

    .line 24
    :cond_3
    return v0
.end method

.method public isDynamicSensor()Z
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWakeUpSensor()Z
    .locals 2

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setRange(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 2
    .line 3
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 4
    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{Sensor name=\""

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "\", vendor=\""

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "\", version="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", type="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", maxRange="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", resolution="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", power="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", minDelay="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    .line 80
    .line 81
    const-string/jumbo v2, "}"

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0
.end method
