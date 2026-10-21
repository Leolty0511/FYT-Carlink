.class public Lcom/android/internal/os/MemoryPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MemoryPowerCalculator"


# instance fields
.field private final powerAverages:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/os/MemoryPowerCalculator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "memory.bandwidths"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v2, v1, [D

    .line 11
    .line 12
    iput-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    .line 18
    .line 19
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    aput-wide v4, v3, v2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    .line 26
    .line 27
    aget-wide v4, v3, v2

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    cmpl-double v3, v4, v6

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    sget-boolean v3, Lcom/android/internal/os/MemoryPowerCalculator;->DEBUG:Z

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const-string v3, "MemoryPowerCalculator"

    .line 40
    .line 41
    const-string v4, "Problem with PowerProfile. Received 0 value in MemoryPowerCalculator"

    .line 42
    .line 43
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 0

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    :goto_0
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v9

    .line 18
    const-string v10, "MemoryPowerCalculator"

    .line 19
    .line 20
    if-ge v8, v9, :cond_1

    .line 21
    .line 22
    iget-object v9, v0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    .line 23
    .line 24
    array-length v11, v9

    .line 25
    if-ge v8, v11, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v11

    .line 31
    long-to-int v11, v11

    .line 32
    aget-wide v11, v9, v11

    .line 33
    .line 34
    invoke-virtual {v2, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    check-cast v9, Landroid/os/BatteryStats$Timer;

    .line 39
    .line 40
    move-wide/from16 v13, p3

    .line 41
    .line 42
    move/from16 v15, p7

    .line 43
    .line 44
    move/from16 p5, v8

    .line 45
    .line 46
    invoke-virtual {v9, v13, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    long-to-double v13, v7

    .line 51
    mul-double/2addr v13, v11

    .line 52
    const-wide v16, 0x40ed4c0000000000L    # 60000.0

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    div-double v13, v13, v16

    .line 58
    .line 59
    sget-boolean v9, Lcom/android/internal/os/MemoryPowerCalculator;->DEBUG:Z

    .line 60
    .line 61
    if-eqz v9, :cond_0

    .line 62
    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v15, "Calculating mAh for bucket "

    .line 66
    .line 67
    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move/from16 v15, p5

    .line 71
    .line 72
    move-wide/from16 p5, v5

    .line 73
    .line 74
    invoke-virtual {v2, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v5, " while unplugged"

    .line 82
    .line 83
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v6, "Converted power profile number from "

    .line 96
    .line 97
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v6, v0, Lcom/android/internal/os/MemoryPowerCalculator;->powerAverages:[D

    .line 101
    .line 102
    invoke-virtual {v2, v15}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    long-to-int v0, v0

    .line 107
    aget-wide v0, v6, v0

    .line 108
    .line 109
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, " into "

    .line 113
    .line 114
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v1, "Calculated mAm "

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_0
    move/from16 v15, p5

    .line 146
    .line 147
    move-wide/from16 p5, v5

    .line 148
    .line 149
    :goto_1
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 150
    .line 151
    div-double/2addr v13, v0

    .line 152
    add-double/2addr v3, v13

    .line 153
    move-wide/from16 v5, p5

    .line 154
    .line 155
    add-long/2addr v5, v7

    .line 156
    add-int/lit8 v8, v15, 0x1

    .line 157
    .line 158
    move-object/from16 v0, p0

    .line 159
    .line 160
    move-object/from16 v1, p1

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_1
    move-object/from16 v0, p1

    .line 165
    .line 166
    iput-wide v3, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 167
    .line 168
    iput-wide v5, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 169
    .line 170
    sget-boolean v0, Lcom/android/internal/os/MemoryPowerCalculator;->DEBUG:Z

    .line 171
    .line 172
    if-eqz v0, :cond_2

    .line 173
    .line 174
    const/4 v0, 0x2

    .line 175
    new-array v0, v0, [Ljava/lang/Object;

    .line 176
    .line 177
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const/4 v2, 0x0

    .line 182
    aput-object v1, v0, v2

    .line 183
    .line 184
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const/4 v2, 0x1

    .line 189
    aput-object v1, v0, v2

    .line 190
    .line 191
    const-string v1, "Calculated total mAh for memory %f while unplugged %d "

    .line 192
    .line 193
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_2
    return-void
.end method
