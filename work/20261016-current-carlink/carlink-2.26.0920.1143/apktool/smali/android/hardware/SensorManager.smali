.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;
    }
.end annotation


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

.field public static final SENSOR_STATUS_NO_CONTACT:I = -0x1

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

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

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

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method

.method public static getAltitude(FF)F
    .locals 2

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fc85b95c0000000L    # 0.19029495120048523

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

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    const/4 v4, 0x7

    .line 9
    const/4 v5, 0x3

    .line 10
    const/16 v6, 0x10

    .line 11
    .line 12
    const/16 v7, 0x8

    .line 13
    .line 14
    const/4 v8, 0x6

    .line 15
    const/4 v9, 0x5

    .line 16
    const/4 v10, 0x4

    .line 17
    const/4 v11, 0x2

    .line 18
    const/4 v12, 0x1

    .line 19
    const/4 v13, 0x0

    .line 20
    const/16 v15, 0x9

    .line 21
    .line 22
    if-ne v2, v15, :cond_0

    .line 23
    .line 24
    aget v2, v0, v13

    .line 25
    .line 26
    aget v16, v0, v12

    .line 27
    .line 28
    aget v17, v0, v11

    .line 29
    .line 30
    aget v18, v0, v5

    .line 31
    .line 32
    aget v19, v0, v10

    .line 33
    .line 34
    aget v20, v0, v9

    .line 35
    .line 36
    aget v21, v0, v8

    .line 37
    .line 38
    aget v22, v0, v4

    .line 39
    .line 40
    aget v0, v0, v7

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    array-length v2, v0

    .line 44
    if-ne v2, v6, :cond_1

    .line 45
    .line 46
    aget v2, v0, v13

    .line 47
    .line 48
    aget v16, v0, v12

    .line 49
    .line 50
    aget v17, v0, v11

    .line 51
    .line 52
    aget v18, v0, v10

    .line 53
    .line 54
    aget v19, v0, v9

    .line 55
    .line 56
    aget v20, v0, v8

    .line 57
    .line 58
    aget v21, v0, v7

    .line 59
    .line 60
    aget v22, v0, v15

    .line 61
    .line 62
    aget v0, v0, v3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    const/16 v17, 0x0

    .line 70
    .line 71
    const/16 v18, 0x0

    .line 72
    .line 73
    const/16 v19, 0x0

    .line 74
    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    const/16 v21, 0x0

    .line 78
    .line 79
    const/16 v22, 0x0

    .line 80
    .line 81
    :goto_0
    array-length v14, v1

    .line 82
    if-ne v14, v15, :cond_2

    .line 83
    .line 84
    aget v14, v1, v13

    .line 85
    .line 86
    aget v3, v1, v12

    .line 87
    .line 88
    aget v6, v1, v11

    .line 89
    .line 90
    aget v5, v1, v5

    .line 91
    .line 92
    aget v10, v1, v10

    .line 93
    .line 94
    aget v9, v1, v9

    .line 95
    .line 96
    aget v8, v1, v8

    .line 97
    .line 98
    aget v4, v1, v4

    .line 99
    .line 100
    aget v1, v1, v7

    .line 101
    .line 102
    move/from16 v23, v8

    .line 103
    .line 104
    move v8, v9

    .line 105
    move v9, v10

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    array-length v4, v1

    .line 108
    if-ne v4, v6, :cond_3

    .line 109
    .line 110
    aget v14, v1, v13

    .line 111
    .line 112
    aget v4, v1, v12

    .line 113
    .line 114
    aget v5, v1, v11

    .line 115
    .line 116
    aget v6, v1, v10

    .line 117
    .line 118
    aget v9, v1, v9

    .line 119
    .line 120
    aget v8, v1, v8

    .line 121
    .line 122
    aget v7, v1, v7

    .line 123
    .line 124
    aget v10, v1, v15

    .line 125
    .line 126
    aget v1, v1, v3

    .line 127
    .line 128
    move v3, v4

    .line 129
    move/from16 v23, v7

    .line 130
    .line 131
    move v4, v10

    .line 132
    move/from16 v24, v6

    .line 133
    .line 134
    move v6, v5

    .line 135
    move/from16 v5, v24

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    const/4 v1, 0x0

    .line 139
    const/4 v3, 0x0

    .line 140
    const/4 v4, 0x0

    .line 141
    const/4 v5, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v8, 0x0

    .line 144
    const/4 v9, 0x0

    .line 145
    const/4 v14, 0x0

    .line 146
    const/16 v23, 0x0

    .line 147
    .line 148
    :goto_1
    mul-float v14, v14, v16

    .line 149
    .line 150
    mul-float v5, v5, v19

    .line 151
    .line 152
    add-float/2addr v5, v14

    .line 153
    mul-float v23, v23, v22

    .line 154
    .line 155
    add-float v5, v23, v5

    .line 156
    .line 157
    mul-float v3, v3, v16

    .line 158
    .line 159
    mul-float v9, v9, v19

    .line 160
    .line 161
    add-float/2addr v9, v3

    .line 162
    mul-float v4, v4, v22

    .line 163
    .line 164
    add-float/2addr v4, v9

    .line 165
    mul-float/2addr v2, v6

    .line 166
    mul-float v18, v18, v8

    .line 167
    .line 168
    add-float v18, v18, v2

    .line 169
    .line 170
    mul-float v21, v21, v1

    .line 171
    .line 172
    add-float v2, v21, v18

    .line 173
    .line 174
    mul-float v16, v16, v6

    .line 175
    .line 176
    mul-float v19, v19, v8

    .line 177
    .line 178
    add-float v19, v19, v16

    .line 179
    .line 180
    mul-float v22, v22, v1

    .line 181
    .line 182
    add-float v3, v22, v19

    .line 183
    .line 184
    mul-float v6, v6, v17

    .line 185
    .line 186
    mul-float v8, v8, v20

    .line 187
    .line 188
    add-float/2addr v8, v6

    .line 189
    mul-float/2addr v1, v0

    .line 190
    add-float/2addr v1, v8

    .line 191
    float-to-double v5, v5

    .line 192
    float-to-double v7, v4

    .line 193
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    double-to-float v0, v4

    .line 198
    aput v0, p0, v13

    .line 199
    .line 200
    neg-float v0, v3

    .line 201
    float-to-double v3, v0

    .line 202
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    .line 203
    .line 204
    .line 205
    move-result-wide v3

    .line 206
    double-to-float v0, v3

    .line 207
    aput v0, p0, v12

    .line 208
    .line 209
    neg-float v0, v2

    .line 210
    float-to-double v2, v0

    .line 211
    float-to-double v0, v1

    .line 212
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 213
    .line 214
    .line 215
    move-result-wide v0

    .line 216
    double-to-float v0, v0

    .line 217
    aput v0, p0, v11

    .line 218
    .line 219
    return-void
.end method

.method private static getDelay(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x30d40

    goto :goto_0

    :cond_1
    const p0, 0x1046b

    goto :goto_0

    :cond_2
    const/16 p0, 0x4e20

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getInclination([F)F
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    const/4 v2, 0x5

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    aget v0, p0, v2

    .line 8
    .line 9
    float-to-double v0, v0

    .line 10
    const/4 v2, 0x4

    .line 11
    aget p0, p0, v2

    .line 12
    .line 13
    float-to-double v2, p0

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :goto_0
    double-to-float p0, v0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 v0, 0x6

    .line 21
    aget v0, p0, v0

    .line 22
    .line 23
    float-to-double v0, v0

    .line 24
    aget p0, p0, v2

    .line 25
    .line 26
    float-to-double v2, p0

    .line 27
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    goto :goto_0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "SensorManager"

    .line 9
    .line 10
    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/hardware/LegacySensorManager;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1
.end method

.method public static getOrientation([F[F)[F
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    const/16 v5, 0x9

    .line 8
    .line 9
    if-ne v0, v5, :cond_0

    .line 10
    .line 11
    aget v0, p0, v4

    .line 12
    .line 13
    float-to-double v5, v0

    .line 14
    const/4 v0, 0x4

    .line 15
    aget v0, p0, v0

    .line 16
    .line 17
    float-to-double v7, v0

    .line 18
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    double-to-float v0, v5

    .line 23
    aput v0, p1, v3

    .line 24
    .line 25
    const/4 v0, 0x7

    .line 26
    aget v0, p0, v0

    .line 27
    .line 28
    neg-float v0, v0

    .line 29
    float-to-double v5, v0

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    double-to-float v0, v5

    .line 35
    aput v0, p1, v4

    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    aget v0, p0, v0

    .line 39
    .line 40
    neg-float v0, v0

    .line 41
    float-to-double v3, v0

    .line 42
    aget p0, p0, v1

    .line 43
    .line 44
    float-to-double v0, p0

    .line 45
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    double-to-float p0, v0

    .line 50
    aput p0, p1, v2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    aget v0, p0, v4

    .line 54
    .line 55
    float-to-double v6, v0

    .line 56
    const/4 v0, 0x5

    .line 57
    aget v0, p0, v0

    .line 58
    .line 59
    float-to-double v8, v0

    .line 60
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    double-to-float v0, v6

    .line 65
    aput v0, p1, v3

    .line 66
    .line 67
    aget v0, p0, v5

    .line 68
    .line 69
    neg-float v0, v0

    .line 70
    float-to-double v5, v0

    .line 71
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    double-to-float v0, v5

    .line 76
    aput v0, p1, v4

    .line 77
    .line 78
    aget v0, p0, v1

    .line 79
    .line 80
    neg-float v0, v0

    .line 81
    float-to-double v0, v0

    .line 82
    const/16 v3, 0xa

    .line 83
    .line 84
    aget p0, p0, v3

    .line 85
    .line 86
    float-to-double v3, p0

    .line 87
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    double-to-float p0, v0

    .line 92
    aput p0, p1, v2

    .line 93
    .line 94
    :goto_0
    return-object p1
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    aget v0, p1, v2

    .line 10
    .line 11
    aput v0, p0, v5

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    aget v0, p1, v5

    .line 15
    .line 16
    mul-float/2addr v0, v0

    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    sub-float/2addr v1, v0

    .line 20
    aget v0, p1, v4

    .line 21
    .line 22
    mul-float/2addr v0, v0

    .line 23
    sub-float/2addr v1, v0

    .line 24
    aget v0, p1, v3

    .line 25
    .line 26
    mul-float/2addr v0, v0

    .line 27
    sub-float/2addr v1, v0

    .line 28
    aput v1, p0, v5

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    cmpl-float v6, v1, v0

    .line 32
    .line 33
    if-lez v6, :cond_1

    .line 34
    .line 35
    float-to-double v0, v1

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    double-to-float v0, v0

    .line 41
    :cond_1
    aput v0, p0, v5

    .line 42
    .line 43
    :goto_0
    aget v0, p1, v5

    .line 44
    .line 45
    aput v0, p0, v4

    .line 46
    .line 47
    aget v0, p1, v4

    .line 48
    .line 49
    aput v0, p0, v3

    .line 50
    .line 51
    aget p1, p1, v3

    .line 52
    .line 53
    aput p1, p0, v2

    .line 54
    .line 55
    return-void
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, p2, v2

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    aget v5, p2, v4

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    aget v7, p2, v6

    .line 13
    .line 14
    mul-float v8, v3, v3

    .line 15
    .line 16
    mul-float v9, v5, v5

    .line 17
    .line 18
    add-float/2addr v9, v8

    .line 19
    mul-float v8, v7, v7

    .line 20
    .line 21
    add-float/2addr v8, v9

    .line 22
    const v9, 0x3f765d4b

    .line 23
    .line 24
    .line 25
    cmpg-float v9, v8, v9

    .line 26
    .line 27
    if-gez v9, :cond_0

    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    aget v9, p3, v2

    .line 31
    .line 32
    aget v10, p3, v4

    .line 33
    .line 34
    aget v11, p3, v6

    .line 35
    .line 36
    mul-float v12, v10, v7

    .line 37
    .line 38
    mul-float v13, v11, v5

    .line 39
    .line 40
    sub-float/2addr v12, v13

    .line 41
    mul-float v13, v11, v3

    .line 42
    .line 43
    mul-float v14, v9, v7

    .line 44
    .line 45
    sub-float/2addr v13, v14

    .line 46
    mul-float v14, v9, v5

    .line 47
    .line 48
    mul-float v15, v10, v3

    .line 49
    .line 50
    sub-float/2addr v14, v15

    .line 51
    mul-float v15, v12, v12

    .line 52
    .line 53
    mul-float v16, v13, v13

    .line 54
    .line 55
    add-float v16, v16, v15

    .line 56
    .line 57
    mul-float v15, v14, v14

    .line 58
    .line 59
    add-float v15, v15, v16

    .line 60
    .line 61
    move/from16 p2, v7

    .line 62
    .line 63
    float-to-double v6, v15

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    double-to-float v6, v6

    .line 69
    const v7, 0x3dcccccd    # 0.1f

    .line 70
    .line 71
    .line 72
    cmpg-float v7, v6, v7

    .line 73
    .line 74
    if-gez v7, :cond_1

    .line 75
    .line 76
    return v2

    .line 77
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 78
    .line 79
    div-float v6, v7, v6

    .line 80
    .line 81
    mul-float/2addr v12, v6

    .line 82
    mul-float/2addr v13, v6

    .line 83
    mul-float/2addr v14, v6

    .line 84
    move v15, v5

    .line 85
    float-to-double v4, v8

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    double-to-float v4, v4

    .line 91
    div-float v4, v7, v4

    .line 92
    .line 93
    mul-float/2addr v3, v4

    .line 94
    mul-float v5, v15, v4

    .line 95
    .line 96
    mul-float v4, v4, p2

    .line 97
    .line 98
    mul-float v8, v5, v14

    .line 99
    .line 100
    mul-float v15, v4, v13

    .line 101
    .line 102
    sub-float/2addr v8, v15

    .line 103
    mul-float v15, v4, v12

    .line 104
    .line 105
    mul-float v17, v3, v14

    .line 106
    .line 107
    sub-float v15, v15, v17

    .line 108
    .line 109
    mul-float v17, v3, v13

    .line 110
    .line 111
    mul-float v18, v5, v12

    .line 112
    .line 113
    sub-float v17, v17, v18

    .line 114
    .line 115
    const/16 v18, 0xf

    .line 116
    .line 117
    const/16 v19, 0xe

    .line 118
    .line 119
    const/16 v20, 0xd

    .line 120
    .line 121
    const/16 v21, 0xc

    .line 122
    .line 123
    const/16 v22, 0xb

    .line 124
    .line 125
    const/16 v23, 0xa

    .line 126
    .line 127
    const/16 v24, 0x8

    .line 128
    .line 129
    const/16 v25, 0x7

    .line 130
    .line 131
    const/16 v26, 0x6

    .line 132
    .line 133
    const/16 v27, 0x5

    .line 134
    .line 135
    const/16 v28, 0x4

    .line 136
    .line 137
    const/16 v29, 0x3

    .line 138
    .line 139
    const/16 v7, 0x9

    .line 140
    .line 141
    const/16 v30, 0x0

    .line 142
    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    array-length v6, v0

    .line 146
    if-ne v6, v7, :cond_2

    .line 147
    .line 148
    aput v12, v0, v2

    .line 149
    .line 150
    const/4 v6, 0x1

    .line 151
    aput v13, v0, v6

    .line 152
    .line 153
    const/4 v12, 0x2

    .line 154
    aput v14, v0, v12

    .line 155
    .line 156
    aput v8, v0, v29

    .line 157
    .line 158
    aput v15, v0, v28

    .line 159
    .line 160
    aput v17, v0, v27

    .line 161
    .line 162
    aput v3, v0, v26

    .line 163
    .line 164
    aput v5, v0, v25

    .line 165
    .line 166
    aput v4, v0, v24

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_2
    array-length v6, v0

    .line 170
    const/16 v7, 0x10

    .line 171
    .line 172
    if-ne v6, v7, :cond_3

    .line 173
    .line 174
    aput v12, v0, v2

    .line 175
    .line 176
    const/4 v6, 0x1

    .line 177
    aput v13, v0, v6

    .line 178
    .line 179
    const/4 v7, 0x2

    .line 180
    aput v14, v0, v7

    .line 181
    .line 182
    aput v30, v0, v29

    .line 183
    .line 184
    aput v8, v0, v28

    .line 185
    .line 186
    aput v15, v0, v27

    .line 187
    .line 188
    aput v17, v0, v26

    .line 189
    .line 190
    aput v30, v0, v25

    .line 191
    .line 192
    aput v3, v0, v24

    .line 193
    .line 194
    const/16 v7, 0x9

    .line 195
    .line 196
    aput v5, v0, v7

    .line 197
    .line 198
    aput v4, v0, v23

    .line 199
    .line 200
    aput v30, v0, v22

    .line 201
    .line 202
    aput v30, v0, v21

    .line 203
    .line 204
    aput v30, v0, v20

    .line 205
    .line 206
    aput v30, v0, v19

    .line 207
    .line 208
    const/high16 v7, 0x3f800000    # 1.0f

    .line 209
    .line 210
    aput v7, v0, v18

    .line 211
    .line 212
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 213
    .line 214
    mul-float v0, v9, v9

    .line 215
    .line 216
    mul-float v7, v10, v10

    .line 217
    .line 218
    add-float/2addr v7, v0

    .line 219
    mul-float v0, v11, v11

    .line 220
    .line 221
    add-float/2addr v0, v7

    .line 222
    float-to-double v12, v0

    .line 223
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 224
    .line 225
    .line 226
    move-result-wide v12

    .line 227
    double-to-float v0, v12

    .line 228
    const/high16 v7, 0x3f800000    # 1.0f

    .line 229
    .line 230
    div-float v0, v7, v0

    .line 231
    .line 232
    mul-float/2addr v8, v9

    .line 233
    mul-float/2addr v15, v10

    .line 234
    add-float/2addr v15, v8

    .line 235
    mul-float v17, v17, v11

    .line 236
    .line 237
    add-float v17, v17, v15

    .line 238
    .line 239
    mul-float v17, v17, v0

    .line 240
    .line 241
    mul-float/2addr v9, v3

    .line 242
    mul-float/2addr v10, v5

    .line 243
    add-float/2addr v10, v9

    .line 244
    mul-float/2addr v11, v4

    .line 245
    add-float/2addr v11, v10

    .line 246
    mul-float/2addr v11, v0

    .line 247
    array-length v0, v1

    .line 248
    const/16 v3, 0x9

    .line 249
    .line 250
    if-ne v0, v3, :cond_4

    .line 251
    .line 252
    const/high16 v0, 0x3f800000    # 1.0f

    .line 253
    .line 254
    aput v0, v1, v2

    .line 255
    .line 256
    const/4 v0, 0x1

    .line 257
    aput v30, v1, v0

    .line 258
    .line 259
    const/4 v2, 0x2

    .line 260
    aput v30, v1, v2

    .line 261
    .line 262
    aput v30, v1, v29

    .line 263
    .line 264
    aput v17, v1, v28

    .line 265
    .line 266
    aput v11, v1, v27

    .line 267
    .line 268
    aput v30, v1, v26

    .line 269
    .line 270
    neg-float v2, v11

    .line 271
    aput v2, v1, v25

    .line 272
    .line 273
    aput v17, v1, v24

    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_4
    array-length v3, v1

    .line 277
    const/16 v4, 0x10

    .line 278
    .line 279
    if-ne v3, v4, :cond_5

    .line 280
    .line 281
    const/high16 v3, 0x3f800000    # 1.0f

    .line 282
    .line 283
    aput v3, v1, v2

    .line 284
    .line 285
    const/4 v0, 0x1

    .line 286
    aput v30, v1, v0

    .line 287
    .line 288
    const/4 v0, 0x2

    .line 289
    aput v30, v1, v0

    .line 290
    .line 291
    aput v30, v1, v28

    .line 292
    .line 293
    aput v17, v1, v27

    .line 294
    .line 295
    aput v11, v1, v26

    .line 296
    .line 297
    aput v30, v1, v24

    .line 298
    .line 299
    neg-float v0, v11

    .line 300
    const/16 v2, 0x9

    .line 301
    .line 302
    aput v0, v1, v2

    .line 303
    .line 304
    aput v17, v1, v23

    .line 305
    .line 306
    aput v30, v1, v19

    .line 307
    .line 308
    aput v30, v1, v20

    .line 309
    .line 310
    aput v30, v1, v21

    .line 311
    .line 312
    aput v30, v1, v22

    .line 313
    .line 314
    aput v30, v1, v25

    .line 315
    .line 316
    aput v30, v1, v29

    .line 317
    .line 318
    const/high16 v0, 0x3f800000    # 1.0f

    .line 319
    .line 320
    aput v0, v1, v18

    .line 321
    .line 322
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 323
    return v0
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, v1, v2

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    aget v5, v1, v4

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    aget v7, v1, v6

    .line 13
    .line 14
    array-length v8, v1

    .line 15
    const/4 v9, 0x3

    .line 16
    const/4 v10, 0x0

    .line 17
    const/high16 v11, 0x3f800000    # 1.0f

    .line 18
    .line 19
    const/4 v12, 0x4

    .line 20
    if-lt v8, v12, :cond_0

    .line 21
    .line 22
    aget v1, v1, v9

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    mul-float v1, v3, v3

    .line 26
    .line 27
    sub-float v1, v11, v1

    .line 28
    .line 29
    mul-float v8, v5, v5

    .line 30
    .line 31
    sub-float/2addr v1, v8

    .line 32
    mul-float v8, v7, v7

    .line 33
    .line 34
    sub-float/2addr v1, v8

    .line 35
    cmpl-float v8, v1, v10

    .line 36
    .line 37
    if-lez v8, :cond_1

    .line 38
    .line 39
    float-to-double v13, v1

    .line 40
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v13

    .line 44
    double-to-float v1, v13

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v1, v10

    .line 47
    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    .line 48
    .line 49
    mul-float v13, v3, v8

    .line 50
    .line 51
    mul-float/2addr v3, v13

    .line 52
    mul-float v14, v5, v8

    .line 53
    .line 54
    mul-float v15, v14, v5

    .line 55
    .line 56
    mul-float/2addr v8, v7

    .line 57
    mul-float v16, v8, v7

    .line 58
    .line 59
    mul-float/2addr v5, v13

    .line 60
    mul-float/2addr v8, v1

    .line 61
    mul-float v17, v13, v7

    .line 62
    .line 63
    mul-float v18, v14, v1

    .line 64
    .line 65
    mul-float/2addr v14, v7

    .line 66
    mul-float/2addr v13, v1

    .line 67
    array-length v1, v0

    .line 68
    const/16 v7, 0x8

    .line 69
    .line 70
    const/16 v19, 0x7

    .line 71
    .line 72
    const/16 v20, 0x6

    .line 73
    .line 74
    const/16 v21, 0x5

    .line 75
    .line 76
    const/16 v10, 0x9

    .line 77
    .line 78
    if-ne v1, v10, :cond_2

    .line 79
    .line 80
    sub-float v1, v11, v15

    .line 81
    .line 82
    sub-float v1, v1, v16

    .line 83
    .line 84
    aput v1, v0, v2

    .line 85
    .line 86
    sub-float v1, v5, v8

    .line 87
    .line 88
    aput v1, v0, v4

    .line 89
    .line 90
    add-float v1, v17, v18

    .line 91
    .line 92
    aput v1, v0, v6

    .line 93
    .line 94
    add-float/2addr v5, v8

    .line 95
    aput v5, v0, v9

    .line 96
    .line 97
    sub-float/2addr v11, v3

    .line 98
    sub-float v1, v11, v16

    .line 99
    .line 100
    aput v1, v0, v12

    .line 101
    .line 102
    sub-float v1, v14, v13

    .line 103
    .line 104
    aput v1, v0, v21

    .line 105
    .line 106
    sub-float v17, v17, v18

    .line 107
    .line 108
    aput v17, v0, v20

    .line 109
    .line 110
    add-float/2addr v14, v13

    .line 111
    aput v14, v0, v19

    .line 112
    .line 113
    sub-float/2addr v11, v15

    .line 114
    aput v11, v0, v7

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    array-length v1, v0

    .line 118
    const/16 v10, 0x10

    .line 119
    .line 120
    if-ne v1, v10, :cond_3

    .line 121
    .line 122
    sub-float v1, v11, v15

    .line 123
    .line 124
    sub-float v1, v1, v16

    .line 125
    .line 126
    aput v1, v0, v2

    .line 127
    .line 128
    sub-float v1, v5, v8

    .line 129
    .line 130
    aput v1, v0, v4

    .line 131
    .line 132
    add-float v1, v17, v18

    .line 133
    .line 134
    aput v1, v0, v6

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    aput v1, v0, v9

    .line 138
    .line 139
    add-float/2addr v5, v8

    .line 140
    aput v5, v0, v12

    .line 141
    .line 142
    sub-float v2, v11, v3

    .line 143
    .line 144
    sub-float v3, v2, v16

    .line 145
    .line 146
    aput v3, v0, v21

    .line 147
    .line 148
    sub-float v3, v14, v13

    .line 149
    .line 150
    aput v3, v0, v20

    .line 151
    .line 152
    aput v1, v0, v19

    .line 153
    .line 154
    sub-float v17, v17, v18

    .line 155
    .line 156
    aput v17, v0, v7

    .line 157
    .line 158
    add-float/2addr v14, v13

    .line 159
    const/16 v3, 0x9

    .line 160
    .line 161
    aput v14, v0, v3

    .line 162
    .line 163
    const/16 v3, 0xa

    .line 164
    .line 165
    sub-float/2addr v2, v15

    .line 166
    aput v2, v0, v3

    .line 167
    .line 168
    const/16 v2, 0xb

    .line 169
    .line 170
    aput v1, v0, v2

    .line 171
    .line 172
    const/16 v2, 0xe

    .line 173
    .line 174
    aput v1, v0, v2

    .line 175
    .line 176
    const/16 v2, 0xd

    .line 177
    .line 178
    aput v1, v0, v2

    .line 179
    .line 180
    const/16 v2, 0xc

    .line 181
    .line 182
    aput v1, v0, v2

    .line 183
    .line 184
    const/16 v1, 0xf

    .line 185
    .line 186
    aput v11, v0, v1

    .line 187
    .line 188
    :cond_3
    :goto_1
    return-void
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 2

    .line 1
    if-ne p0, p3, :cond_2

    .line 2
    .line 3
    sget-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    array-length p0, p3

    .line 13
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-ge p1, p0, :cond_0

    .line 15
    .line 16
    aget p2, v0, p1

    .line 17
    .line 18
    aput p2, p3, p1

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :cond_1
    monitor-exit v0

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    array-length v5, v0

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eq v5, v4, :cond_0

    .line 13
    .line 14
    return v6

    .line 15
    :cond_0
    and-int/lit8 v5, v1, 0x7c

    .line 16
    .line 17
    if-nez v5, :cond_13

    .line 18
    .line 19
    and-int/lit8 v5, v2, 0x7c

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    goto/16 :goto_a

    .line 24
    .line 25
    :cond_1
    and-int/lit8 v5, v1, 0x3

    .line 26
    .line 27
    if-eqz v5, :cond_12

    .line 28
    .line 29
    and-int/lit8 v7, v2, 0x3

    .line 30
    .line 31
    if-nez v7, :cond_2

    .line 32
    .line 33
    goto/16 :goto_9

    .line 34
    .line 35
    :cond_2
    if-ne v5, v7, :cond_3

    .line 36
    .line 37
    return v6

    .line 38
    :cond_3
    xor-int v8, v1, v2

    .line 39
    .line 40
    const/4 v9, 0x1

    .line 41
    sub-int/2addr v5, v9

    .line 42
    sub-int/2addr v7, v9

    .line 43
    and-int/lit8 v10, v8, 0x3

    .line 44
    .line 45
    sub-int/2addr v10, v9

    .line 46
    add-int/lit8 v11, v10, 0x1

    .line 47
    .line 48
    const/4 v12, 0x3

    .line 49
    rem-int/2addr v11, v12

    .line 50
    add-int/lit8 v13, v10, 0x2

    .line 51
    .line 52
    rem-int/2addr v13, v12

    .line 53
    xor-int/2addr v11, v5

    .line 54
    xor-int/2addr v13, v7

    .line 55
    or-int/2addr v11, v13

    .line 56
    if-eqz v11, :cond_4

    .line 57
    .line 58
    xor-int/lit16 v8, v8, 0x80

    .line 59
    .line 60
    :cond_4
    const/16 v11, 0x80

    .line 61
    .line 62
    if-lt v1, v11, :cond_5

    .line 63
    .line 64
    move v1, v9

    .line 65
    goto :goto_0

    .line 66
    :cond_5
    move v1, v6

    .line 67
    :goto_0
    if-lt v2, v11, :cond_6

    .line 68
    .line 69
    move v2, v9

    .line 70
    goto :goto_1

    .line 71
    :cond_6
    move v2, v6

    .line 72
    :goto_1
    if-lt v8, v11, :cond_7

    .line 73
    .line 74
    move v8, v9

    .line 75
    goto :goto_2

    .line 76
    :cond_7
    move v8, v6

    .line 77
    :goto_2
    const/16 v11, 0x10

    .line 78
    .line 79
    if-ne v4, v11, :cond_8

    .line 80
    .line 81
    const/4 v13, 0x4

    .line 82
    goto :goto_3

    .line 83
    :cond_8
    move v13, v12

    .line 84
    :goto_3
    move v14, v6

    .line 85
    :goto_4
    if-ge v14, v12, :cond_10

    .line 86
    .line 87
    mul-int v15, v14, v13

    .line 88
    .line 89
    :goto_5
    if-ge v6, v12, :cond_f

    .line 90
    .line 91
    if-ne v5, v6, :cond_a

    .line 92
    .line 93
    add-int v16, v15, v6

    .line 94
    .line 95
    if-eqz v1, :cond_9

    .line 96
    .line 97
    add-int/lit8 v17, v15, 0x0

    .line 98
    .line 99
    aget v9, v0, v17

    .line 100
    .line 101
    neg-float v9, v9

    .line 102
    goto :goto_6

    .line 103
    :cond_9
    add-int/lit8 v9, v15, 0x0

    .line 104
    .line 105
    aget v9, v0, v9

    .line 106
    .line 107
    :goto_6
    aput v9, v3, v16

    .line 108
    .line 109
    :cond_a
    if-ne v7, v6, :cond_c

    .line 110
    .line 111
    add-int v9, v15, v6

    .line 112
    .line 113
    if-eqz v2, :cond_b

    .line 114
    .line 115
    add-int/lit8 v16, v15, 0x1

    .line 116
    .line 117
    aget v12, v0, v16

    .line 118
    .line 119
    neg-float v12, v12

    .line 120
    goto :goto_7

    .line 121
    :cond_b
    add-int/lit8 v12, v15, 0x1

    .line 122
    .line 123
    aget v12, v0, v12

    .line 124
    .line 125
    :goto_7
    aput v12, v3, v9

    .line 126
    .line 127
    :cond_c
    if-ne v10, v6, :cond_e

    .line 128
    .line 129
    add-int v9, v15, v6

    .line 130
    .line 131
    add-int/lit8 v12, v15, 0x2

    .line 132
    .line 133
    if-eqz v8, :cond_d

    .line 134
    .line 135
    aget v12, v0, v12

    .line 136
    .line 137
    neg-float v12, v12

    .line 138
    goto :goto_8

    .line 139
    :cond_d
    aget v12, v0, v12

    .line 140
    .line 141
    :goto_8
    aput v12, v3, v9

    .line 142
    .line 143
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 144
    .line 145
    const/4 v9, 0x1

    .line 146
    const/4 v12, 0x3

    .line 147
    goto :goto_5

    .line 148
    :cond_f
    add-int/lit8 v14, v14, 0x1

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    const/4 v9, 0x1

    .line 152
    const/4 v12, 0x3

    .line 153
    goto :goto_4

    .line 154
    :cond_10
    if-ne v4, v11, :cond_11

    .line 155
    .line 156
    const/16 v0, 0xe

    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    aput v1, v3, v0

    .line 160
    .line 161
    const/16 v0, 0xd

    .line 162
    .line 163
    aput v1, v3, v0

    .line 164
    .line 165
    const/16 v0, 0xc

    .line 166
    .line 167
    aput v1, v3, v0

    .line 168
    .line 169
    const/16 v0, 0xb

    .line 170
    .line 171
    aput v1, v3, v0

    .line 172
    .line 173
    const/4 v0, 0x7

    .line 174
    aput v1, v3, v0

    .line 175
    .line 176
    const/4 v0, 0x3

    .line 177
    aput v1, v3, v0

    .line 178
    .line 179
    const/16 v0, 0xf

    .line 180
    .line 181
    const/high16 v1, 0x3f800000    # 1.0f

    .line 182
    .line 183
    aput v1, v3, v0

    .line 184
    .line 185
    :cond_11
    const/4 v0, 0x1

    .line 186
    return v0

    .line 187
    :cond_12
    :goto_9
    move v0, v6

    .line 188
    return v0

    .line 189
    :cond_13
    :goto_a
    move v0, v6

    .line 190
    return v0
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result p1

    return p1
.end method

.method public abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public configureDirectChannel(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I

    move-result p1

    return p1
.end method

.method public abstract configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
.end method

.method public createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object p1

    return-object p1
.end method

.method public createDirectChannel(Landroid/os/MemoryFile;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
.end method

.method public destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V

    return-void
.end method

.method public abstract destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result p1

    return p1
.end method

.method public abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 3
    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 6
    invoke-virtual {v0}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDynamicSensorList(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/hardware/Sensor;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v3, p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public abstract getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Ljava/util/List;

    .line 15
    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Landroid/hardware/Sensor;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v4, p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v0, v2

    .line 54
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    monitor-exit v1

    .line 64
    return-object v2

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p1
.end method

.method public getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public initDataInjection(Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->initDataInjectionImpl(Z)Z

    move-result p1

    return p1
.end method

.method public abstract initDataInjectionImpl(Z)Z
.end method

.method public injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/Sensor;->isDataInjectionSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    if-eqz p2, :cond_3

    .line 10
    .line 11
    const/16 v0, 0x17

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    array-length v1, p2

    .line 18
    if-ne v1, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    if-lt p3, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-gt p3, v0, :cond_1

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v0, p4, v0

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p2, "Negative or zero sensor timestamp"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string p2, "Invalid sensor accuracy"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    new-instance p4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p5, "Wrong number of values for sensor "

    .line 58
    .line 59
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, " actual="

    .line 70
    .line 71
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    array-length p1, p2

    .line 75
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p1, " expected="

    .line 79
    .line 80
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p3

    .line 94
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    const-string/jumbo p2, "sensor data cannot be null"

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    const-string/jumbo p2, "sensor does not support data injection"

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string/jumbo p2, "sensor cannot be null"

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public abstract injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public isDynamicSensorDiscoverySupported()Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public abstract registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
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

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p1

    return p1
.end method

.method public abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result p1

    return p1
.end method

.method public abstract setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
.end method

.method public unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method public abstract unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
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
