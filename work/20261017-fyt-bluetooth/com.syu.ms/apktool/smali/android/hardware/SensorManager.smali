.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field public static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F


# instance fields
.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    return-void
.end method

.method public static getAltitude(FF)F
    .locals 2

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fc85b95c0000000L    # 0.19029495120048523

    .line 1
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const p0, 0x472d2a00    # 44330.0f

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    array-length v2, v0

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/16 v11, 0x9

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v2, v11, :cond_0

    .line 2
    aget v2, v0, v14

    .line 3
    aget v16, v0, v13

    .line 4
    aget v17, v0, v12

    .line 5
    aget v18, v0, v5

    .line 6
    aget v19, v0, v10

    .line 7
    aget v20, v0, v9

    .line 8
    aget v21, v0, v8

    .line 9
    aget v22, v0, v4

    .line 10
    aget v0, v0, v7

    goto :goto_0

    .line 11
    :cond_0
    array-length v2, v0

    if-ne v2, v6, :cond_1

    .line 12
    aget v2, v0, v14

    .line 13
    aget v16, v0, v13

    .line 14
    aget v17, v0, v12

    .line 15
    aget v18, v0, v10

    .line 16
    aget v19, v0, v9

    .line 17
    aget v20, v0, v8

    .line 18
    aget v21, v0, v7

    .line 19
    aget v22, v0, v11

    .line 20
    aget v0, v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 21
    :goto_0
    array-length v15, v1

    if-ne v15, v11, :cond_2

    .line 22
    aget v15, v1, v14

    .line 23
    aget v3, v1, v13

    .line 24
    aget v6, v1, v12

    .line 25
    aget v5, v1, v5

    .line 26
    aget v10, v1, v10

    .line 27
    aget v9, v1, v9

    .line 28
    aget v8, v1, v8

    .line 29
    aget v4, v1, v4

    .line 30
    aget v1, v1, v7

    move/from16 v23, v8

    move v8, v9

    move v9, v10

    goto :goto_1

    .line 31
    :cond_2
    array-length v4, v1

    if-ne v4, v6, :cond_3

    .line 32
    aget v15, v1, v14

    .line 33
    aget v4, v1, v13

    .line 34
    aget v5, v1, v12

    .line 35
    aget v6, v1, v10

    .line 36
    aget v9, v1, v9

    .line 37
    aget v8, v1, v8

    .line 38
    aget v7, v1, v7

    .line 39
    aget v10, v1, v11

    .line 40
    aget v1, v1, v3

    move v3, v4

    move/from16 v23, v7

    move v4, v10

    move/from16 v24, v6

    move v6, v5

    move/from16 v5, v24

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v23, 0x0

    :goto_1
    mul-float v15, v15, v16

    mul-float v5, v5, v19

    add-float/2addr v15, v5

    mul-float v23, v23, v22

    add-float v15, v15, v23

    mul-float v3, v3, v16

    mul-float v9, v9, v19

    add-float/2addr v3, v9

    mul-float v4, v4, v22

    add-float/2addr v3, v4

    mul-float/2addr v2, v6

    mul-float v18, v18, v8

    add-float v2, v2, v18

    mul-float v21, v21, v1

    add-float v2, v2, v21

    mul-float v16, v16, v6

    mul-float v19, v19, v8

    add-float v16, v16, v19

    mul-float v22, v22, v1

    add-float v4, v16, v22

    mul-float v6, v6, v17

    mul-float v8, v8, v20

    add-float/2addr v6, v8

    mul-float/2addr v1, v0

    add-float/2addr v6, v1

    float-to-double v0, v15

    float-to-double v7, v3

    .line 41
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v14

    neg-float v0, v4

    float-to-double v0, v0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v13

    neg-float v0, v2

    float-to-double v0, v0

    float-to-double v2, v6

    .line 43
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v12

    return-void
.end method

.method private static getDelay(I)I
    .locals 2

    const/16 v0, 0x4e20

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x30d40

    goto :goto_0

    :cond_1
    move p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getInclination([F)F
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x5

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 2
    aget v0, p0, v1

    float-to-double v0, v0

    const/4 v2, 0x4

    aget p0, p0, v2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    :goto_0
    double-to-float p0, v0

    return p0

    :cond_0
    const/4 v0, 0x6

    .line 3
    aget v0, p0, v0

    float-to-double v2, v0

    aget p0, p0, v1

    float-to-double v0, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v1, :cond_0

    const-string v1, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Landroid/hardware/LegacySensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getOrientation([F[F)[F
    .locals 10

    .line 1
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-ne v0, v4, :cond_0

    .line 2
    aget v0, p0, v5

    float-to-double v6, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    const/4 v0, 0x7

    .line 3
    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v5

    const/4 v0, 0x6

    .line 4
    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    aget p0, p0, v1

    float-to-double v0, p0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    aput p0, p1, v2

    goto :goto_0

    .line 5
    :cond_0
    aget v0, p0, v5

    float-to-double v6, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    .line 6
    aget v0, p0, v4

    neg-float v0, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p1, v5

    .line 7
    aget v0, p0, v1

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v3, 0xa

    aget p0, p0, v3

    float-to-double v3, p0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    aput p0, p1, v2

    :goto_0
    return-object p1
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    .line 2
    aget v0, p1, v1

    aput v0, p0, v4

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    aget v5, p1, v4

    aget v6, p1, v4

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aget v5, p1, v3

    aget v6, p1, v3

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aget v5, p1, v2

    aget v6, p1, v2

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    aput v0, p0, v4

    .line 4
    aget v0, p0, v4

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    aget v0, p0, v4

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    :cond_1
    aput v5, p0, v4

    .line 5
    :goto_0
    aget v0, p1, v4

    aput v0, p0, v3

    .line 6
    aget v0, p1, v3

    aput v0, p0, v2

    .line 7
    aget p1, p1, v2

    aput p1, p0, v1

    return-void
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    aget v3, p2, v2

    const/4 v4, 0x1

    .line 2
    aget v5, p2, v4

    const/4 v6, 0x2

    .line 3
    aget v7, p2, v6

    .line 4
    aget v8, p3, v2

    .line 5
    aget v9, p3, v4

    .line 6
    aget v10, p3, v6

    mul-float v11, v9, v7

    mul-float v12, v10, v5

    sub-float/2addr v11, v12

    mul-float v12, v10, v3

    mul-float v13, v8, v7

    sub-float/2addr v12, v13

    mul-float v13, v8, v5

    mul-float v14, v9, v3

    sub-float/2addr v13, v14

    mul-float v14, v11, v11

    mul-float v15, v12, v12

    add-float/2addr v14, v15

    mul-float v15, v13, v13

    add-float/2addr v14, v15

    float-to-double v14, v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    const v15, 0x3dcccccd    # 0.1f

    cmpg-float v15, v14, v15

    if-gez v15, :cond_0

    return v2

    :cond_0
    const/high16 v15, 0x3f800000    # 1.0f

    div-float v14, v15, v14

    mul-float/2addr v11, v14

    mul-float/2addr v12, v14

    mul-float/2addr v13, v14

    mul-float v14, v3, v3

    mul-float v16, v5, v5

    add-float v14, v14, v16

    mul-float v16, v7, v7

    add-float v14, v14, v16

    move/from16 p2, v7

    float-to-double v6, v14

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float v6, v15, v6

    mul-float/2addr v3, v6

    mul-float/2addr v5, v6

    mul-float v7, p2, v6

    mul-float v6, v5, v13

    mul-float v14, v7, v12

    sub-float/2addr v6, v14

    mul-float v14, v7, v11

    mul-float v17, v3, v13

    sub-float v14, v14, v17

    mul-float v17, v3, v12

    mul-float v18, v5, v11

    sub-float v17, v17, v18

    const/16 v18, 0xf

    const/16 v19, 0xe

    const/16 v20, 0xd

    const/16 v21, 0xc

    const/16 v22, 0xb

    const/16 v23, 0xa

    const/16 v24, 0x8

    const/16 v25, 0x7

    const/16 v26, 0x6

    const/16 v27, 0x5

    const/16 v28, 0x4

    const/16 v29, 0x3

    const/16 v15, 0x9

    const/16 v30, 0x0

    if-eqz v0, :cond_2

    .line 9
    array-length v4, v0

    if-ne v4, v15, :cond_1

    .line 10
    aput v11, v0, v2

    const/4 v4, 0x1

    aput v12, v0, v4

    const/4 v4, 0x2

    aput v13, v0, v4

    .line 11
    aput v6, v0, v29

    aput v14, v0, v28

    aput v17, v0, v27

    .line 12
    aput v3, v0, v26

    aput v5, v0, v25

    aput v7, v0, v24

    goto :goto_0

    .line 13
    :cond_1
    array-length v4, v0

    const/16 v15, 0x10

    if-ne v4, v15, :cond_2

    .line 14
    aput v11, v0, v2

    const/4 v4, 0x1

    aput v12, v0, v4

    const/4 v4, 0x2

    aput v13, v0, v4

    aput v30, v0, v29

    .line 15
    aput v6, v0, v28

    aput v14, v0, v27

    aput v17, v0, v26

    aput v30, v0, v25

    .line 16
    aput v3, v0, v24

    const/16 v4, 0x9

    aput v5, v0, v4

    aput v7, v0, v23

    aput v30, v0, v22

    .line 17
    aput v30, v0, v21

    aput v30, v0, v20

    aput v30, v0, v19

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v0, v18

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    mul-float v0, v8, v8

    mul-float v4, v9, v9

    add-float/2addr v0, v4

    mul-float v4, v10, v10

    add-float/2addr v0, v4

    float-to-double v11, v0

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v0, v11

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v15, v4, v0

    mul-float/2addr v6, v8

    mul-float/2addr v14, v9

    add-float/2addr v6, v14

    mul-float v17, v17, v10

    add-float v6, v6, v17

    mul-float/2addr v6, v15

    mul-float/2addr v8, v3

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v10, v7

    add-float/2addr v8, v10

    mul-float/2addr v8, v15

    .line 19
    array-length v0, v1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    aput v0, v1, v2

    const/4 v0, 0x1

    aput v30, v1, v0

    const/4 v0, 0x2

    aput v30, v1, v0

    .line 21
    aput v30, v1, v29

    aput v6, v1, v28

    aput v8, v1, v27

    .line 22
    aput v30, v1, v26

    neg-float v0, v8

    aput v0, v1, v25

    aput v6, v1, v24

    goto :goto_1

    .line 23
    :cond_3
    array-length v0, v1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    aput v0, v1, v2

    const/4 v0, 0x1

    aput v30, v1, v0

    const/4 v0, 0x2

    aput v30, v1, v0

    .line 25
    aput v30, v1, v28

    aput v6, v1, v27

    aput v8, v1, v26

    .line 26
    aput v30, v1, v24

    neg-float v0, v8

    const/16 v2, 0x9

    aput v0, v1, v2

    aput v6, v1, v23

    .line 27
    aput v30, v1, v19

    aput v30, v1, v20

    aput v30, v1, v21

    aput v30, v1, v22

    aput v30, v1, v25

    aput v30, v1, v29

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    aput v0, v1, v18

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    aget v3, v1, v2

    const/4 v4, 0x1

    .line 2
    aget v5, v1, v4

    const/4 v6, 0x2

    .line 3
    aget v7, v1, v6

    .line 4
    array-length v8, v1

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-ne v8, v10, :cond_0

    .line 5
    aget v1, v1, v9

    goto :goto_0

    :cond_0
    mul-float v1, v3, v3

    sub-float v1, v12, v1

    mul-float v8, v5, v5

    sub-float/2addr v1, v8

    mul-float v8, v7, v7

    sub-float/2addr v1, v8

    cmpl-float v8, v1, v11

    if-lez v8, :cond_1

    float-to-double v13, v1

    .line 6
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v1, v13

    goto :goto_0

    :cond_1
    move v1, v11

    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v13, v3, v8

    mul-float/2addr v3, v13

    mul-float v14, v5, v8

    mul-float v15, v14, v5

    mul-float/2addr v8, v7

    mul-float v16, v8, v7

    mul-float/2addr v5, v13

    mul-float/2addr v8, v1

    mul-float v17, v13, v7

    mul-float v18, v14, v1

    mul-float/2addr v14, v7

    mul-float/2addr v13, v1

    .line 7
    array-length v1, v0

    const/16 v7, 0x8

    const/16 v19, 0x7

    const/16 v20, 0x6

    const/16 v21, 0x5

    const/16 v11, 0x9

    if-ne v1, v11, :cond_2

    sub-float v1, v12, v15

    sub-float v1, v1, v16

    .line 8
    aput v1, v0, v2

    sub-float v1, v5, v8

    .line 9
    aput v1, v0, v4

    add-float v1, v17, v18

    .line 10
    aput v1, v0, v6

    add-float/2addr v5, v8

    .line 11
    aput v5, v0, v9

    sub-float/2addr v12, v3

    sub-float v1, v12, v16

    .line 12
    aput v1, v0, v10

    sub-float v1, v14, v13

    .line 13
    aput v1, v0, v21

    sub-float v17, v17, v18

    .line 14
    aput v17, v0, v20

    add-float/2addr v14, v13

    .line 15
    aput v14, v0, v19

    sub-float/2addr v12, v15

    .line 16
    aput v12, v0, v7

    goto :goto_1

    .line 17
    :cond_2
    array-length v1, v0

    const/16 v11, 0x10

    if-ne v1, v11, :cond_3

    sub-float v1, v12, v15

    sub-float v1, v1, v16

    .line 18
    aput v1, v0, v2

    sub-float v1, v5, v8

    .line 19
    aput v1, v0, v4

    add-float v1, v17, v18

    .line 20
    aput v1, v0, v6

    const/4 v1, 0x0

    .line 21
    aput v1, v0, v9

    add-float/2addr v5, v8

    .line 22
    aput v5, v0, v10

    sub-float v2, v12, v3

    sub-float v3, v2, v16

    .line 23
    aput v3, v0, v21

    sub-float v3, v14, v13

    .line 24
    aput v3, v0, v20

    .line 25
    aput v1, v0, v19

    sub-float v17, v17, v18

    .line 26
    aput v17, v0, v7

    add-float/2addr v14, v13

    const/16 v3, 0x9

    .line 27
    aput v14, v0, v3

    const/16 v3, 0xa

    sub-float/2addr v2, v15

    .line 28
    aput v2, v0, v3

    const/16 v2, 0xb

    .line 29
    aput v1, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0xd

    const/16 v4, 0xe

    .line 30
    aput v1, v0, v4

    aput v1, v0, v3

    aput v1, v0, v2

    const/16 v1, 0xf

    .line 31
    aput v12, v0, v1

    :cond_3
    :goto_1
    return-void
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 2

    if-ne p0, p3, :cond_2

    .line 1
    sget-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    array-length p0, p3

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 5
    aget p2, v0, p1

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result p0

    return p0
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    array-length v4, v3

    .line 2
    array-length v5, v0

    const/4 v6, 0x0

    if-eq v5, v4, :cond_0

    return v6

    :cond_0
    and-int/lit8 v5, v1, 0x7c

    if-nez v5, :cond_13

    and-int/lit8 v5, v2, 0x7c

    if-eqz v5, :cond_1

    goto/16 :goto_a

    :cond_1
    and-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_12

    and-int/lit8 v7, v2, 0x3

    if-nez v7, :cond_2

    goto/16 :goto_9

    :cond_2
    if-ne v5, v7, :cond_3

    return v6

    :cond_3
    xor-int v8, v1, v2

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    sub-int/2addr v7, v9

    and-int/lit8 v10, v8, 0x3

    sub-int/2addr v10, v9

    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x3

    .line 3
    rem-int/2addr v11, v12

    add-int/lit8 v13, v10, 0x2

    .line 4
    rem-int/2addr v13, v12

    xor-int/2addr v11, v5

    xor-int/2addr v13, v7

    or-int/2addr v11, v13

    if-eqz v11, :cond_4

    xor-int/lit16 v8, v8, 0x80

    :cond_4
    const/16 v11, 0x80

    if-lt v1, v11, :cond_5

    move v1, v9

    goto :goto_0

    :cond_5
    move v1, v6

    :goto_0
    if-lt v2, v11, :cond_6

    move v2, v9

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_1
    if-lt v8, v11, :cond_7

    move v8, v9

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_2
    const/16 v11, 0x10

    if-ne v4, v11, :cond_8

    const/4 v13, 0x4

    goto :goto_3

    :cond_8
    move v13, v12

    :goto_3
    move v14, v6

    :goto_4
    if-ge v14, v12, :cond_10

    mul-int v15, v14, v13

    :goto_5
    if-ge v6, v12, :cond_f

    if-ne v5, v6, :cond_a

    add-int v16, v15, v6

    if-eqz v1, :cond_9

    add-int/lit8 v17, v15, 0x0

    .line 5
    aget v9, v0, v17

    neg-float v9, v9

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v15, 0x0

    aget v9, v0, v9

    :goto_6
    aput v9, v3, v16

    :cond_a
    if-ne v7, v6, :cond_c

    add-int v9, v15, v6

    if-eqz v2, :cond_b

    add-int/lit8 v16, v15, 0x1

    .line 6
    aget v12, v0, v16

    neg-float v12, v12

    goto :goto_7

    :cond_b
    add-int/lit8 v12, v15, 0x1

    aget v12, v0, v12

    :goto_7
    aput v12, v3, v9

    :cond_c
    if-ne v10, v6, :cond_e

    add-int v9, v15, v6

    add-int/lit8 v12, v15, 0x2

    if-eqz v8, :cond_d

    .line 7
    aget v12, v0, v12

    neg-float v12, v12

    goto :goto_8

    :cond_d
    aget v12, v0, v12

    :goto_8
    aput v12, v3, v9

    :cond_e
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x3

    goto :goto_5

    :cond_f
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x3

    goto :goto_4

    :cond_10
    if-ne v4, v11, :cond_11

    const/4 v0, 0x7

    const/16 v1, 0xb

    const/16 v2, 0xc

    const/16 v4, 0xd

    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 8
    aput v6, v3, v5

    aput v6, v3, v4

    aput v6, v3, v2

    aput v6, v3, v1

    aput v6, v3, v0

    const/4 v0, 0x3

    aput v6, v3, v0

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    aput v1, v3, v0

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_12
    :goto_9
    move v0, v6

    return v0

    :cond_13
    :goto_a
    move v0, v6

    return v0
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result p1

    return p1
.end method

.method public abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result p1

    return p1
.end method

.method public abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Sensor;

    :goto_0
    return-object p1
.end method

.method public abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 6
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 8
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 9
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 10
    :cond_3
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 7

    .line 4
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    .line 5
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7

    .line 8
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7

    .line 6
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result p1

    return p1
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result p1

    return p1
.end method

.method public abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p1

    return p1
.end method

.method public abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method public abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
