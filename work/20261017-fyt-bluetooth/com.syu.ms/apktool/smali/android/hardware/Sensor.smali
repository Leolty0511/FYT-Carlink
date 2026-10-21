.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static REPORTING_MODE_CONTINUOUS:I = 0x1

.field public static REPORTING_MODE_ONE_SHOT:I = 0x3

.field public static REPORTING_MODE_ON_CHANGE:I = 0x2

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mHandle:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x2a

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v3, 0x3

    aput v3, v0, v3

    const/4 v4, 0x4

    aput v2, v0, v4

    const/4 v5, 0x5

    aput v3, v0, v5

    const/4 v6, 0x6

    aput v2, v0, v6

    const/4 v7, 0x7

    aput v3, v0, v7

    const/16 v7, 0x8

    aput v2, v0, v7

    const/16 v7, 0x9

    aput v3, v0, v7

    const/16 v7, 0xa

    aput v1, v0, v7

    const/16 v7, 0xb

    aput v3, v0, v7

    const/16 v7, 0xc

    aput v2, v0, v7

    const/16 v7, 0xd

    aput v3, v0, v7

    const/16 v7, 0xe

    aput v1, v0, v7

    const/16 v7, 0xf

    aput v3, v0, v7

    const/16 v7, 0x10

    aput v1, v0, v7

    const/16 v7, 0x11

    aput v3, v0, v7

    const/16 v7, 0x12

    aput v2, v0, v7

    const/16 v7, 0x13

    aput v3, v0, v7

    const/16 v7, 0x14

    aput v2, v0, v7

    const/16 v7, 0x15

    aput v3, v0, v7

    const/16 v7, 0x16

    aput v2, v0, v7

    const/16 v7, 0x17

    aput v5, v0, v7

    const/16 v7, 0x18

    aput v1, v0, v7

    const/16 v7, 0x19

    aput v3, v0, v7

    const/16 v7, 0x1a

    aput v1, v0, v7

    const/16 v7, 0x1b

    aput v3, v0, v7

    const/16 v7, 0x1c

    aput v2, v0, v7

    const/16 v7, 0x1d

    aput v6, v0, v7

    const/16 v7, 0x1e

    aput v2, v0, v7

    const/16 v7, 0x1f

    aput v4, v0, v7

    const/16 v4, 0x20

    aput v2, v0, v4

    const/16 v4, 0x21

    aput v6, v0, v4

    const/16 v4, 0x22

    aput v3, v0, v4

    const/16 v3, 0x23

    aput v2, v0, v3

    const/16 v3, 0x24

    aput v1, v0, v3

    const/16 v3, 0x25

    aput v2, v0, v3

    const/16 v3, 0x26

    aput v1, v0, v3

    const/16 v1, 0x27

    aput v2, v0, v1

    const/16 v1, 0x28

    aput v2, v0, v1

    const/16 v1, 0x29

    aput v5, v0, v1

    .line 1
    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 1

    .line 1
    iget p0, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/16 v0, 0x11

    if-gt p1, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    .line 2
    sget-object p1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v0, p1

    if-lt p0, v0, :cond_1

    const/16 p0, 0x10

    return p0

    .line 3
    :cond_1
    aget p0, p1, p0

    return p0
.end method

.method public static getReportingMode(Landroid/hardware/Sensor;)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    mul-int/lit8 v0, v0, 0x2

    .line 2
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 3
    iget p0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    if-nez p0, :cond_0

    .line 4
    sget p0, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    return p0

    :cond_0
    if-gez p0, :cond_1

    .line 5
    sget p0, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    return p0

    .line 6
    :cond_1
    sget p0, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    return p0

    .line 7
    :cond_2
    aget p0, v1, v0

    return p0
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public setRange(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 2
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
