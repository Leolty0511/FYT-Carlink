.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 3
    new-array p1, p1, [J

    iput-object p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    return-void
.end method

.method public constructor <init>(I[J)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 6
    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const/4 v1, 0x0

    .line 8
    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ltz p3, :cond_2

    .line 3
    .line 4
    shr-long v1, p1, p3

    .line 5
    .line 6
    const-wide/16 v3, 0xf

    .line 7
    .line 8
    and-long/2addr v1, v3

    .line 9
    long-to-int v1, v1

    .line 10
    add-int/lit8 p3, p3, -0x4

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-ltz v1, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x9

    .line 20
    .line 21
    if-gt v1, v0, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x30

    .line 24
    .line 25
    int-to-char v0, v1

    .line 26
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x61

    .line 31
    .line 32
    add-int/lit8 v1, v1, -0xa

    .line 33
    .line 34
    int-to-char v0, v1

    .line 35
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :goto_1
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p1

    .line 3
    .line 4
    move-wide/from16 v2, p4

    .line 5
    .line 6
    iget v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7
    .line 8
    iget-wide v5, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 9
    .line 10
    const-wide/16 v7, 0x0

    .line 11
    .line 12
    cmp-long v7, v5, v7

    .line 13
    .line 14
    if-ltz v7, :cond_2

    .line 15
    .line 16
    if-lez v1, :cond_2

    .line 17
    .line 18
    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 19
    .line 20
    sub-long v5, v2, v5

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    move v9, v8

    .line 24
    :goto_0
    if-ge v9, v1, :cond_1

    .line 25
    .line 26
    array-length v10, v7

    .line 27
    const/4 v11, 0x1

    .line 28
    sub-int/2addr v10, v11

    .line 29
    invoke-static {v7, v8, v7, v11, v10}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 30
    .line 31
    .line 32
    sub-int v10, v1, v9

    .line 33
    .line 34
    int-to-long v10, v10

    .line 35
    div-long v10, v5, v10

    .line 36
    .line 37
    sub-long/2addr v5, v10

    .line 38
    const-wide v12, 0xffffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmp-long v14, v10, v12

    .line 44
    .line 45
    if-lez v14, :cond_0

    .line 46
    .line 47
    move-wide v10, v12

    .line 48
    :cond_0
    or-long v10, v10, p2

    .line 49
    .line 50
    aput-wide v10, v7, v8

    .line 51
    .line 52
    add-int/lit8 v9, v9, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    add-int/2addr v4, v1

    .line 56
    array-length v1, v7

    .line 57
    if-le v4, v1, :cond_2

    .line 58
    .line 59
    array-length v4, v7

    .line 60
    :cond_2
    iput v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 61
    .line 62
    iput-wide v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 63
    .line 64
    return-void
.end method

.method public clearTime()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 4
    .line 5
    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 6
    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    return-wide v3

    .line 12
    :cond_0
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    move-wide v10, v5

    .line 16
    move v8, v7

    .line 17
    move v9, v8

    .line 18
    :goto_0
    if-ge v8, v2, :cond_2

    .line 19
    .line 20
    aget-wide v12, v1, v8

    .line 21
    .line 22
    const-wide/high16 v14, 0xff000000000000L

    .line 23
    .line 24
    and-long/2addr v14, v12

    .line 25
    const/16 v16, 0x30

    .line 26
    .line 27
    shr-long v14, v14, v16

    .line 28
    .line 29
    const-wide/high16 v16, -0x100000000000000L

    .line 30
    .line 31
    and-long v16, v12, v16

    .line 32
    .line 33
    const/16 v18, 0x38

    .line 34
    .line 35
    shr-long v16, v16, v18

    .line 36
    .line 37
    and-long v16, v16, p1

    .line 38
    .line 39
    cmp-long v16, v16, v5

    .line 40
    .line 41
    if-nez v16, :cond_1

    .line 42
    .line 43
    and-long v14, v14, p1

    .line 44
    .line 45
    cmp-long v14, v14, p3

    .line 46
    .line 47
    if-nez v14, :cond_1

    .line 48
    .line 49
    add-int/lit8 v9, v9, 0x1

    .line 50
    .line 51
    const-wide v14, 0xffffffffffL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    and-long/2addr v12, v14

    .line 57
    add-long/2addr v10, v12

    .line 58
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    if-gtz v9, :cond_3

    .line 62
    .line 63
    return-wide v3

    .line 64
    :cond_3
    if-eqz p5, :cond_4

    .line 65
    .line 66
    aput v9, p5, v7

    .line 67
    .line 68
    :cond_4
    int-to-long v1, v9

    .line 69
    div-long/2addr v10, v1

    .line 70
    const-wide/16 v1, 0x64

    .line 71
    .line 72
    mul-long/2addr v10, v1

    .line 73
    return-wide v10
.end method

.method public computeTimePerLevel()J
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 2
    .line 3
    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 4
    .line 5
    if-gtz v1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v1, :cond_1

    .line 14
    .line 15
    aget-wide v5, v0, v4

    .line 16
    .line 17
    const-wide v7, 0xffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr v5, v7

    .line 23
    add-long/2addr v2, v5

    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    int-to-long v0, v1

    .line 28
    div-long/2addr v2, v0

    .line 29
    return-wide v2
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    move-wide v5, v3

    .line 11
    :goto_0
    const/16 v7, 0x66

    .line 12
    .line 13
    const/16 v8, 0x46

    .line 14
    .line 15
    const/16 v9, 0x2d

    .line 16
    .line 17
    if-ge v2, v1, :cond_b

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    if-eq v10, v9, :cond_b

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    const/16 v9, 0x44

    .line 28
    .line 29
    if-eq v10, v9, :cond_a

    .line 30
    .line 31
    if-eq v10, v8, :cond_9

    .line 32
    .line 33
    const/16 v8, 0x49

    .line 34
    .line 35
    if-eq v10, v8, :cond_8

    .line 36
    .line 37
    const/16 v8, 0x5a

    .line 38
    .line 39
    if-eq v10, v8, :cond_7

    .line 40
    .line 41
    const/16 v8, 0x64

    .line 42
    .line 43
    if-eq v10, v8, :cond_6

    .line 44
    .line 45
    if-eq v10, v7, :cond_9

    .line 46
    .line 47
    const/16 v7, 0x69

    .line 48
    .line 49
    if-eq v10, v7, :cond_5

    .line 50
    .line 51
    const/16 v7, 0x7a

    .line 52
    .line 53
    if-eq v10, v7, :cond_4

    .line 54
    .line 55
    const/16 v7, 0x4f

    .line 56
    .line 57
    if-eq v10, v7, :cond_3

    .line 58
    .line 59
    const/16 v7, 0x50

    .line 60
    .line 61
    if-eq v10, v7, :cond_2

    .line 62
    .line 63
    const/16 v7, 0x6f

    .line 64
    .line 65
    if-eq v10, v7, :cond_1

    .line 66
    .line 67
    const/16 v7, 0x70

    .line 68
    .line 69
    if-eq v10, v7, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-wide/high16 v7, 0x4000000000000L

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-wide/high16 v7, 0x1000000000000L

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-wide/high16 v7, 0x400000000000000L

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const-wide/high16 v7, 0x100000000000000L

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const-wide/high16 v7, 0x3000000000000L

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    const-wide/high16 v7, 0x8000000000000L

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const-wide/high16 v7, 0x2000000000000L

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_7
    const-wide/high16 v7, 0x300000000000000L    # 3.13151306251402E-294

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_8
    const-wide/high16 v7, 0x800000000000000L

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_9
    or-long/2addr v5, v3

    .line 100
    goto :goto_0

    .line 101
    :cond_a
    const-wide/high16 v7, 0x200000000000000L

    .line 102
    .line 103
    :goto_1
    or-long/2addr v5, v7

    .line 104
    goto :goto_0

    .line 105
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    move-wide v10, v3

    .line 108
    :goto_2
    const/16 v12, 0x39

    .line 109
    .line 110
    const/4 v13, 0x4

    .line 111
    const/16 v14, 0x41

    .line 112
    .line 113
    const/16 v15, 0x61

    .line 114
    .line 115
    const/16 v3, 0x30

    .line 116
    .line 117
    if-ge v2, v1, :cond_f

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eq v4, v9, :cond_f

    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    shl-long/2addr v10, v13

    .line 128
    if-lt v4, v3, :cond_c

    .line 129
    .line 130
    if-gt v4, v12, :cond_c

    .line 131
    .line 132
    add-int/lit8 v4, v4, -0x30

    .line 133
    .line 134
    :goto_3
    int-to-long v3, v4

    .line 135
    add-long/2addr v10, v3

    .line 136
    goto :goto_5

    .line 137
    :cond_c
    if-lt v4, v15, :cond_d

    .line 138
    .line 139
    if-gt v4, v7, :cond_d

    .line 140
    .line 141
    add-int/lit8 v4, v4, -0x61

    .line 142
    .line 143
    :goto_4
    add-int/lit8 v4, v4, 0xa

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_d
    if-lt v4, v14, :cond_e

    .line 147
    .line 148
    if-gt v4, v8, :cond_e

    .line 149
    .line 150
    add-int/lit8 v4, v4, -0x41

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_e
    :goto_5
    const-wide/16 v3, 0x0

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    const/16 v4, 0x28

    .line 159
    .line 160
    shl-long/2addr v10, v4

    .line 161
    const-wide v18, 0xff0000000000L

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    and-long v10, v10, v18

    .line 167
    .line 168
    or-long v4, v5, v10

    .line 169
    .line 170
    const-wide/16 v16, 0x0

    .line 171
    .line 172
    :cond_10
    :goto_6
    if-ge v2, v1, :cond_13

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-eq v6, v9, :cond_13

    .line 179
    .line 180
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    shl-long v16, v16, v13

    .line 183
    .line 184
    if-lt v6, v3, :cond_11

    .line 185
    .line 186
    if-gt v6, v12, :cond_11

    .line 187
    .line 188
    add-int/lit8 v6, v6, -0x30

    .line 189
    .line 190
    :goto_7
    int-to-long v10, v6

    .line 191
    add-long v16, v16, v10

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_11
    if-lt v6, v15, :cond_12

    .line 195
    .line 196
    if-gt v6, v7, :cond_12

    .line 197
    .line 198
    add-int/lit8 v6, v6, -0x61

    .line 199
    .line 200
    :goto_8
    add-int/lit8 v6, v6, 0xa

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_12
    if-lt v6, v14, :cond_10

    .line 204
    .line 205
    if-gt v6, v8, :cond_10

    .line 206
    .line 207
    add-int/lit8 v6, v6, -0x41

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_13
    move-object/from16 v0, p0

    .line 211
    .line 212
    iget-object v1, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 213
    .line 214
    const-wide v2, 0xffffffffffL

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    and-long v2, v16, v2

    .line 220
    .line 221
    or-long/2addr v2, v4

    .line 222
    aput-wide v2, v1, p1

    .line 223
    .line 224
    return-void
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    const-wide v3, 0xffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v3, v1

    .line 11
    const-wide v5, 0xff0000000000L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    and-long/2addr v5, v1

    .line 17
    const/16 p1, 0x28

    .line 18
    .line 19
    shr-long/2addr v5, p1

    .line 20
    long-to-int p1, v5

    .line 21
    const-wide/high16 v5, 0xff000000000000L

    .line 22
    .line 23
    and-long/2addr v5, v1

    .line 24
    const/16 v0, 0x30

    .line 25
    .line 26
    shr-long/2addr v5, v0

    .line 27
    long-to-int v0, v5

    .line 28
    const-wide/high16 v5, -0x100000000000000L

    .line 29
    .line 30
    and-long/2addr v1, v5

    .line 31
    const/16 v5, 0x38

    .line 32
    .line 33
    shr-long/2addr v1, v5

    .line 34
    long-to-int v1, v1

    .line 35
    and-int/lit8 v2, v0, 0x3

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    add-int/2addr v2, v5

    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x4

    .line 41
    const/4 v8, 0x3

    .line 42
    if-eq v2, v5, :cond_3

    .line 43
    .line 44
    if-eq v2, v6, :cond_2

    .line 45
    .line 46
    if-eq v2, v8, :cond_1

    .line 47
    .line 48
    if-eq v2, v7, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/16 v2, 0x7a

    .line 52
    .line 53
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/16 v2, 0x64

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/16 v2, 0x6f

    .line 64
    .line 65
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/16 v2, 0x66

    .line 70
    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :goto_0
    and-int/lit8 v2, v0, 0x4

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    const/16 v2, 0x70

    .line 79
    .line 80
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :cond_4
    and-int/lit8 v0, v0, 0x8

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    const/16 v0, 0x69

    .line 88
    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :cond_5
    and-int/lit8 v0, v1, 0x3

    .line 93
    .line 94
    add-int/2addr v0, v5

    .line 95
    if-eq v0, v5, :cond_9

    .line 96
    .line 97
    if-eq v0, v6, :cond_8

    .line 98
    .line 99
    if-eq v0, v8, :cond_7

    .line 100
    .line 101
    if-eq v0, v7, :cond_6

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    const/16 v0, 0x5a

    .line 105
    .line 106
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_7
    const/16 v0, 0x44

    .line 111
    .line 112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    const/16 v0, 0x4f

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_9
    const/16 v0, 0x46

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    :goto_1
    and-int/lit8 v0, v1, 0x4

    .line 128
    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    const/16 v0, 0x50

    .line 132
    .line 133
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    :cond_a
    and-int/lit8 v0, v1, 0x8

    .line 137
    .line 138
    if-eqz v0, :cond_b

    .line 139
    .line 140
    const/16 v0, 0x49

    .line 141
    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :cond_b
    const/16 v0, 0x2d

    .line 146
    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    int-to-long v1, p1

    .line 151
    invoke-direct {p0, v1, v2, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const/16 p1, 0x24

    .line 158
    .line 159
    invoke-direct {p0, v3, v4, p1, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public getDurationAt(I)J
    .locals 5

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffffL

    and-long v0, v1, v3

    return-wide v0
.end method

.method public getInitModeAt(I)I
    .locals 5

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v1, v0, p1

    const-wide/high16 v3, 0xff000000000000L

    and-long v0, v1, v3

    const/16 p1, 0x30

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public getLevelAt(I)I
    .locals 5

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xff0000000000L

    and-long v0, v1, v3

    const/16 p1, 0x28

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public getModModeAt(I)I
    .locals 5

    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v1, v0, p1

    const-wide/high16 v3, -0x100000000000000L

    and-long v0, v1, v3

    const/16 p1, 0x38

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public init()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7
    .line 8
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    if-gt v0, v1, :cond_1

    .line 9
    .line 10
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    aput-wide v3, v2, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    new-instance p1, Landroid/os/ParcelFormatException;

    .line 28
    .line 29
    const-string/jumbo v1, "more step durations than available: "

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 10
    .line 11
    aget-wide v3, v2, v1

    .line 12
    .line 13
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method
