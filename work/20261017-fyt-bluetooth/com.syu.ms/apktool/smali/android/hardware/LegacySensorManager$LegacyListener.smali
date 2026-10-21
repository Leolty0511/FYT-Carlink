.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 3
    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 4
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    return-void
.end method

.method private static getLegacySensorType(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    const/16 p0, 0x80

    return p0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    return v1
.end method

.method private static hasOrientationSensor(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mapSensorDataToWindow(I[FI)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    aget v1, p2, v0

    const/4 v2, 0x1

    .line 2
    aget v3, p2, v2

    const/4 v4, 0x2

    .line 3
    aget v5, p2, v4

    const/16 v6, 0x80

    const/16 v7, 0x8

    if-eq p1, v2, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v7, :cond_0

    if-eq p1, v6, :cond_2

    goto :goto_0

    :cond_0
    neg-float v1, v1

    neg-float v3, v3

    goto :goto_0

    :cond_1
    neg-float v1, v1

    neg-float v3, v3

    :cond_2
    neg-float v5, v5

    .line 4
    :goto_0
    aput v1, p2, v0

    .line 5
    aput v3, p2, v2

    .line 6
    aput v5, p2, v4

    const/4 v8, 0x3

    .line 7
    aput v1, p2, v8

    const/4 v8, 0x4

    .line 8
    aput v3, p2, v8

    const/4 v8, 0x5

    .line 9
    aput v5, p2, v8

    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_6

    if-eq p1, v2, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_4

    goto :goto_2

    :cond_3
    neg-float v3, v3

    .line 10
    aput v3, p2, v0

    .line 11
    aput v1, p2, v2

    .line 12
    aput v5, p2, v4

    goto :goto_2

    :cond_4
    const/high16 v8, 0x43870000    # 270.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_5

    const/16 v8, 0x5a

    goto :goto_1

    :cond_5
    const/16 v8, -0x10e

    :goto_1
    int-to-float v8, v8

    add-float/2addr v1, v8

    .line 13
    aput v1, p2, v0

    .line 14
    aput v5, p2, v2

    .line 15
    aput v3, p2, v4

    :cond_6
    :goto_2
    and-int/2addr p3, v4

    if-eqz p3, :cond_a

    .line 16
    aget p3, p2, v0

    .line 17
    aget v1, p2, v2

    .line 18
    aget v3, p2, v4

    if-eq p1, v2, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_8

    goto :goto_4

    :cond_7
    neg-float p1, p3

    .line 19
    aput p1, p2, v0

    neg-float p1, v1

    .line 20
    aput p1, p2, v2

    .line 21
    aput v3, p2, v4

    goto :goto_4

    :cond_8
    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float v5, p3, p1

    if-ltz v5, :cond_9

    sub-float/2addr p3, p1

    goto :goto_3

    :cond_9
    add-float/2addr p3, p1

    .line 22
    :goto_3
    aput p3, p2, v0

    neg-float p1, v1

    .line 23
    aput p1, p2, v2

    neg-float p1, v3

    .line 24
    aput p1, p2, v4

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public hasSensors()Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    .line 3
    aget v4, v1, v3

    aput v4, v0, v3

    const/4 v4, 0x2

    .line 4
    aget v1, v1, v4

    aput v1, v0, v4

    .line 5
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 6
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v4

    .line 7
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    .line 8
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v1, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 10
    :cond_0
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget p1, v0, v2

    invoke-virtual {v1, v4, v5, p1}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result p1

    aput p1, v0, v2

    .line 12
    iget-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {p1, v3, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {p1, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerSensor(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int v1, v0, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    .line 3
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public unregisterSensor(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    not-int v1, p1

    and-int/2addr v0, v1

    .line 2
    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 3
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
