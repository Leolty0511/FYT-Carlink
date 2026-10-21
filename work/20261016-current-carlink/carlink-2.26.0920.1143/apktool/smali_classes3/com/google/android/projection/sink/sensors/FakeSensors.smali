.class public Lcom/google/android/projection/sink/sensors/FakeSensors;
.super Lcom/google/android/projection/sink/sensors/SensorCollectorBase;
.source "SourceFile"


# static fields
.field private static final KPH_PER_MPS:F = 3.6f

.field private static final ONCHANGE_SENSORS:[I

.field private static final PERIODIC_SENSORS:[I


# instance fields
.field private final mChangeSomeFakeValues:Ljava/lang/Runnable;

.field private final mEnabled:Z

.field private mLastSpeedUpdate:J

.field private mOdometer:F

.field private final mRandom:Ljava/util/Random;

.field private mReportedOdometer:F

.field private mSpeed:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/projection/sink/sensors/FakeSensors;->PERIODIC_SENSORS:[I

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/android/projection/sink/sensors/FakeSensors;->ONCHANGE_SENSORS:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x3
        0x4
        0xb
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    :array_1
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0xc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/projection/sink/sensors/FakeSensors$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/google/android/projection/sink/sensors/FakeSensors$1;-><init>(Lcom/google/android/projection/sink/sensors/FakeSensors;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mChangeSomeFakeValues:Ljava/lang/Runnable;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lcom/google/android/projection/sink/settings/Settings;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/projection/sink/settings/Settings;->isMissingSensorsGeneratorEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mEnabled:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mEnabled:Z

    .line 38
    .line 39
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mEnabled:Z

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const p1, 0x186a0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-float p1, p1

    .line 51
    iput p1, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mOdometer:F

    .line 52
    .line 53
    const/16 p1, 0x21

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mSpeed:I

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public static synthetic access$000()[I
    .locals 1

    sget-object v0, Lcom/google/android/projection/sink/sensors/FakeSensors;->ONCHANGE_SENSORS:[I

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/sensors/FakeSensors;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mChangeSomeFakeValues:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/sensors/FakeSensors;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    return-object p0
.end method


# virtual methods
.method public discoverSensorsImpl(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/projection/sink/sensors/FakeSensors;->PERIODIC_SENSORS:[I

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    aget v4, v0, v3

    .line 13
    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lcom/google/android/projection/sink/sensors/FakeSensors;->ONCHANGE_SENSORS:[I

    .line 25
    .line 26
    array-length v1, v0

    .line 27
    :goto_1
    if-ge v2, v1, :cond_1

    .line 28
    .line 29
    aget v3, v0, v2

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    return-void
.end method

.method public registerSensorsImpl()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mChangeSomeFakeValues:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendUpdateImpl(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x1

    .line 5
    if-ne p2, v0, :cond_3

    .line 6
    .line 7
    iget p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mSpeed:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 10
    .line 11
    const/16 v4, 0x1e

    .line 12
    .line 13
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0xf

    .line 18
    .line 19
    add-int/2addr v0, p2

    .line 20
    iput v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mSpeed:I

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    iput v1, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mSpeed:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    int-to-float p2, v0

    .line 28
    const v0, 0x425e38e4

    .line 29
    .line 30
    .line 31
    cmpl-float p2, p2, v0

    .line 32
    .line 33
    if-lez p2, :cond_1

    .line 34
    .line 35
    const/16 p2, 0x37

    .line 36
    .line 37
    iput p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mSpeed:I

    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iget-wide v4, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mLastSpeedUpdate:J

    .line 44
    .line 45
    const-wide/16 v6, 0x0

    .line 46
    .line 47
    cmp-long p2, v4, v6

    .line 48
    .line 49
    if-lez p2, :cond_2

    .line 50
    .line 51
    sub-long v4, v0, v4

    .line 52
    .line 53
    long-to-float p2, v4

    .line 54
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 55
    .line 56
    div-float/2addr p2, v4

    .line 57
    iget v5, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mSpeed:I

    .line 58
    .line 59
    int-to-float v5, v5

    .line 60
    mul-float/2addr v5, p2

    .line 61
    div-float/2addr v5, v4

    .line 62
    iget p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mOdometer:F

    .line 63
    .line 64
    add-float/2addr p2, v5

    .line 65
    iput p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mOdometer:F

    .line 66
    .line 67
    iget v4, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mReportedOdometer:F

    .line 68
    .line 69
    sub-float/2addr p2, v4

    .line 70
    const v4, 0x3dcccccd    # 0.1f

    .line 71
    .line 72
    .line 73
    cmpl-float p2, p2, v4

    .line 74
    .line 75
    if-lez p2, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->reportAvailable(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iput-wide v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mLastSpeedUpdate:J

    .line 81
    .line 82
    iget p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mSpeed:I

    .line 83
    .line 84
    int-to-float p2, p2

    .line 85
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportSpeedData(F)V

    .line 86
    .line 87
    .line 88
    return v3

    .line 89
    :cond_3
    if-ne p2, v2, :cond_4

    .line 90
    .line 91
    iget p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mOdometer:F

    .line 92
    .line 93
    iput p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mReportedOdometer:F

    .line 94
    .line 95
    float-to-double v0, p2

    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportOdometerData(D)V

    .line 97
    .line 98
    .line 99
    return v3

    .line 100
    :cond_4
    const/4 v0, 0x4

    .line 101
    if-ne p2, v0, :cond_5

    .line 102
    .line 103
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 104
    .line 105
    const/16 v0, 0x2134

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    int-to-double v0, p2

    .line 112
    invoke-virtual {p1, v0, v1}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportRpmData(D)V

    .line 113
    .line 114
    .line 115
    return v3

    .line 116
    :cond_5
    const/4 v0, 0x6

    .line 117
    if-ne p2, v0, :cond_7

    .line 118
    .line 119
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 120
    .line 121
    const/16 v0, 0x64

    .line 122
    .line 123
    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 128
    .line 129
    const/16 v2, 0x1f4

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/16 v2, 0xa

    .line 136
    .line 137
    if-ge p2, v2, :cond_6

    .line 138
    .line 139
    move v1, v3

    .line 140
    :cond_6
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportFuelData(IIZ)V

    .line 141
    .line 142
    .line 143
    return v3

    .line 144
    :cond_7
    const/4 v1, 0x7

    .line 145
    if-ne p2, v1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportParkingBrakeData(Z)V

    .line 148
    .line 149
    .line 150
    return v3

    .line 151
    :cond_8
    const/16 v1, 0x8

    .line 152
    .line 153
    if-ne p2, v1, :cond_9

    .line 154
    .line 155
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 156
    .line 157
    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportGearData(I)V

    .line 162
    .line 163
    .line 164
    return v3

    .line 165
    :cond_9
    const/16 v0, 0xb

    .line 166
    .line 167
    const/16 v1, 0x14

    .line 168
    .line 169
    if-ne p2, v0, :cond_a

    .line 170
    .line 171
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 172
    .line 173
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    add-int/2addr p2, v1

    .line 178
    int-to-float p2, p2

    .line 179
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    add-int/lit8 v0, v0, 0x5a

    .line 186
    .line 187
    int-to-float v0, v0

    .line 188
    invoke-virtual {p1, p2, v0}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportEnvironmentData(FF)V

    .line 189
    .line 190
    .line 191
    return v3

    .line 192
    :cond_a
    const/16 v0, 0xc

    .line 193
    .line 194
    if-ne p2, v0, :cond_b

    .line 195
    .line 196
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 197
    .line 198
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    add-int/2addr p2, v1

    .line 203
    int-to-float p2, p2

    .line 204
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mRandom:Ljava/util/Random;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    add-int/2addr v0, v1

    .line 211
    int-to-float v0, v0

    .line 212
    invoke-virtual {p1, p2, v0}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportHvacData(FF)V

    .line 213
    .line 214
    .line 215
    return v3

    .line 216
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 217
    .line 218
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 219
    .line 220
    .line 221
    throw p1
.end method

.method public unregisterSensorsImpl()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors;->mChangeSomeFakeValues:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
