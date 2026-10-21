.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x18

    .line 5
    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 9
    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    .line 13
    .line 14
    const/16 v0, 0xc

    .line 15
    .line 16
    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 4
    .line 5
    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 6
    .line 7
    aget v3, v1, v2

    .line 8
    .line 9
    sub-float v4, p3, v3

    .line 10
    .line 11
    const/high16 v5, 0x43340000    # 180.0f

    .line 12
    .line 13
    cmpl-float v4, v4, v5

    .line 14
    .line 15
    const/high16 v6, 0x43b40000    # 360.0f

    .line 16
    .line 17
    if-lez v4, :cond_0

    .line 18
    .line 19
    sub-float v3, p3, v6

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sub-float v3, v3, p3

    .line 23
    .line 24
    cmpl-float v3, v3, v5

    .line 25
    .line 26
    if-lez v3, :cond_1

    .line 27
    .line 28
    add-float v3, p3, v6

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move/from16 v3, p3

    .line 32
    .line 33
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    iput v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 36
    .line 37
    const/16 v4, 0x18

    .line 38
    .line 39
    const/16 v5, 0xc

    .line 40
    .line 41
    if-lt v2, v4, :cond_2

    .line 42
    .line 43
    iput v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 44
    .line 45
    :cond_2
    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 46
    .line 47
    aput v3, v1, v2

    .line 48
    .line 49
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    .line 50
    .line 51
    aput-wide p1, v4, v2

    .line 52
    .line 53
    add-int/lit8 v7, v2, -0xc

    .line 54
    .line 55
    aput v3, v1, v7

    .line 56
    .line 57
    sub-int/2addr v2, v5

    .line 58
    aput-wide p1, v4, v2

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    move v3, v1

    .line 63
    move v4, v3

    .line 64
    move v5, v4

    .line 65
    move v7, v5

    .line 66
    move v8, v7

    .line 67
    :goto_1
    const/16 v9, 0xb

    .line 68
    .line 69
    if-ge v2, v9, :cond_3

    .line 70
    .line 71
    iget v9, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 72
    .line 73
    add-int/lit8 v9, v9, -0x1

    .line 74
    .line 75
    sub-int/2addr v9, v2

    .line 76
    iget-object v10, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    .line 77
    .line 78
    aget v10, v10, v9

    .line 79
    .line 80
    iget-object v11, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    .line 81
    .line 82
    aget-wide v12, v11, v9

    .line 83
    .line 84
    const-wide/16 v14, 0x2

    .line 85
    .line 86
    div-long v16, v12, v14

    .line 87
    .line 88
    add-int/lit8 v9, v9, 0x1

    .line 89
    .line 90
    aget-wide v18, v11, v9

    .line 91
    .line 92
    div-long v14, v18, v14

    .line 93
    .line 94
    add-long v14, v14, v16

    .line 95
    .line 96
    sub-long v14, v14, p1

    .line 97
    .line 98
    long-to-float v9, v14

    .line 99
    const v11, 0x3089705f    # 1.0E-9f

    .line 100
    .line 101
    .line 102
    mul-float/2addr v9, v11

    .line 103
    sub-long v12, v12, v18

    .line 104
    .line 105
    long-to-float v12, v12

    .line 106
    mul-float/2addr v12, v11

    .line 107
    mul-float/2addr v12, v12

    .line 108
    mul-float v11, v10, v12

    .line 109
    .line 110
    add-float/2addr v3, v11

    .line 111
    mul-float v11, v9, v12

    .line 112
    .line 113
    mul-float/2addr v9, v11

    .line 114
    add-float/2addr v4, v9

    .line 115
    add-float/2addr v5, v11

    .line 116
    mul-float/2addr v10, v11

    .line 117
    add-float/2addr v7, v10

    .line 118
    add-float/2addr v8, v12

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    mul-float v2, v3, v4

    .line 123
    .line 124
    mul-float/2addr v7, v5

    .line 125
    add-float/2addr v7, v2

    .line 126
    mul-float/2addr v4, v8

    .line 127
    mul-float v2, v5, v5

    .line 128
    .line 129
    add-float/2addr v2, v4

    .line 130
    div-float/2addr v7, v2

    .line 131
    mul-float/2addr v8, v7

    .line 132
    sub-float/2addr v8, v3

    .line 133
    div-float/2addr v8, v5

    .line 134
    const v2, 0x3da3d70a    # 0.08f

    .line 135
    .line 136
    .line 137
    mul-float/2addr v8, v2

    .line 138
    add-float/2addr v8, v7

    .line 139
    const v2, 0x3b360b61

    .line 140
    .line 141
    .line 142
    mul-float/2addr v8, v2

    .line 143
    cmpl-float v2, v8, v1

    .line 144
    .line 145
    if-ltz v2, :cond_4

    .line 146
    .line 147
    move v2, v8

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    neg-float v2, v8

    .line 150
    :goto_2
    const/high16 v3, 0x3f000000    # 0.5f

    .line 151
    .line 152
    cmpl-float v2, v2, v3

    .line 153
    .line 154
    const/high16 v4, 0x3f800000    # 1.0f

    .line 155
    .line 156
    if-ltz v2, :cond_5

    .line 157
    .line 158
    add-float/2addr v3, v8

    .line 159
    float-to-double v2, v3

    .line 160
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 161
    .line 162
    .line 163
    move-result-wide v2

    .line 164
    double-to-float v2, v2

    .line 165
    sub-float/2addr v8, v2

    .line 166
    add-float/2addr v8, v4

    .line 167
    :cond_5
    cmpg-float v1, v8, v1

    .line 168
    .line 169
    if-gez v1, :cond_6

    .line 170
    .line 171
    add-float/2addr v8, v4

    .line 172
    :cond_6
    mul-float/2addr v8, v6

    .line 173
    return v8
.end method
