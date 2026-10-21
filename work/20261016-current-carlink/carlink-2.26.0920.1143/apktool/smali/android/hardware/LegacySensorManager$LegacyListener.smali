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

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 8
    .line 9
    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 15
    .line 16
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 20
    .line 21
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

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p2, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v3, p2, v2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    aget v5, p2, v4

    .line 9
    .line 10
    const/16 v6, 0x80

    .line 11
    .line 12
    const/16 v7, 0x8

    .line 13
    .line 14
    if-eq p1, v2, :cond_2

    .line 15
    .line 16
    if-eq p1, v4, :cond_1

    .line 17
    .line 18
    if-eq p1, v7, :cond_0

    .line 19
    .line 20
    if-eq p1, v6, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-float v1, v1

    .line 24
    neg-float v3, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    neg-float v1, v1

    .line 27
    neg-float v3, v3

    .line 28
    :cond_2
    neg-float v5, v5

    .line 29
    :goto_0
    aput v1, p2, v0

    .line 30
    .line 31
    aput v3, p2, v2

    .line 32
    .line 33
    aput v5, p2, v4

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    aput v1, p2, v8

    .line 37
    .line 38
    const/4 v8, 0x4

    .line 39
    aput v3, p2, v8

    .line 40
    .line 41
    const/4 v8, 0x5

    .line 42
    aput v5, p2, v8

    .line 43
    .line 44
    and-int/lit8 v8, p3, 0x1

    .line 45
    .line 46
    if-eqz v8, :cond_6

    .line 47
    .line 48
    if-eq p1, v2, :cond_4

    .line 49
    .line 50
    if-eq p1, v4, :cond_3

    .line 51
    .line 52
    if-eq p1, v7, :cond_3

    .line 53
    .line 54
    if-eq p1, v6, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    neg-float v3, v3

    .line 58
    aput v3, p2, v0

    .line 59
    .line 60
    aput v1, p2, v2

    .line 61
    .line 62
    aput v5, p2, v4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    const/high16 v8, 0x43870000    # 270.0f

    .line 66
    .line 67
    cmpg-float v8, v1, v8

    .line 68
    .line 69
    if-gez v8, :cond_5

    .line 70
    .line 71
    const/16 v8, 0x5a

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    const/16 v8, -0x10e

    .line 75
    .line 76
    :goto_1
    int-to-float v8, v8

    .line 77
    add-float/2addr v1, v8

    .line 78
    aput v1, p2, v0

    .line 79
    .line 80
    aput v5, p2, v2

    .line 81
    .line 82
    aput v3, p2, v4

    .line 83
    .line 84
    :cond_6
    :goto_2
    and-int/2addr p3, v4

    .line 85
    if-eqz p3, :cond_a

    .line 86
    .line 87
    aget p3, p2, v0

    .line 88
    .line 89
    aget v1, p2, v2

    .line 90
    .line 91
    aget v3, p2, v4

    .line 92
    .line 93
    if-eq p1, v2, :cond_8

    .line 94
    .line 95
    if-eq p1, v4, :cond_7

    .line 96
    .line 97
    if-eq p1, v7, :cond_7

    .line 98
    .line 99
    if-eq p1, v6, :cond_8

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_7
    neg-float p1, p3

    .line 103
    aput p1, p2, v0

    .line 104
    .line 105
    neg-float p1, v1

    .line 106
    aput p1, p2, v2

    .line 107
    .line 108
    aput v3, p2, v4

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    const/high16 p1, 0x43340000    # 180.0f

    .line 112
    .line 113
    cmpl-float v5, p3, p1

    .line 114
    .line 115
    if-ltz v5, :cond_9

    .line 116
    .line 117
    sub-float/2addr p3, p1

    .line 118
    goto :goto_3

    .line 119
    :cond_9
    add-float/2addr p3, p1

    .line 120
    :goto_3
    aput p3, p2, v0

    .line 121
    .line 122
    neg-float p1, v1

    .line 123
    aput p1, p2, v2

    .line 124
    .line 125
    neg-float p1, v3

    .line 126
    aput p1, p2, v4

    .line 127
    .line 128
    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public hasSensors()Z
    .locals 1

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
    .line 3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, v1, v2

    .line 7
    .line 8
    aput v3, v0, v2

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aget v4, v1, v3

    .line 12
    .line 13
    aput v4, v0, v3

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    aget v1, v1, v4

    .line 17
    .line 18
    aput v1, v0, v4

    .line 19
    .line 20
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-direct {p0, v4, v0, v5}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    if-ne v1, v5, :cond_1

    .line 39
    .line 40
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 41
    .line 42
    const/16 v4, 0x80

    .line 43
    .line 44
    and-int/2addr v1, v4

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 48
    .line 49
    invoke-interface {v1, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 53
    .line 54
    and-int/2addr v1, v3

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 58
    .line 59
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 60
    .line 61
    aget p1, v0, v2

    .line 62
    .line 63
    invoke-virtual {v1, v4, v5, p1}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    aput p1, v0, v2

    .line 68
    .line 69
    iget-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 70
    .line 71
    invoke-interface {p1, v3, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 76
    .line 77
    invoke-interface {p1, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public registerSensor(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 2
    .line 3
    and-int v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 14
    .line 15
    or-int/2addr v1, p1

    .line 16
    iput v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public unregisterSensor(I)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 2
    .line 3
    and-int v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    not-int v1, p1

    .line 10
    and-int/2addr v0, v1

    .line 11
    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 12
    .line 13
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 20
    .line 21
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    const/4 p1, 0x1

    .line 29
    return p1
.end method
